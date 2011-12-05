class Order < ActiveRecord::Base

  default_scope :order => 'created_at DESC'

  belongs_to :client
  validates :client_id, :presence => true

  belongs_to :company
  validates :company_id, :presence => true

  has_many :order_items

  belongs_to :carrier
  validates :type_of_freight, :inclusion => %w(CIF FOB), :on => :update
  validate :must_have_a_carrier_for_fob_type_of_freight
  before_save :set_carrier_to_nil_if_type_of_freight_is_cif

  serialize :payment, Array
  validates :payment, :presence => true, :on => :update

  serialize :discount, Array
  validates :discount, :presence => true, :on => :update

  validates :interest, :numericality => { :greater_than_or_equal_to => 0 },
                       :allow_nil => true

  validates :comission, :numericality => { :greater_than_or_equal_to => 0 },
                        :allow_nil => true


  state_machine :status, :initial => :draft do
    state :draft
    state :to_be_confirmed
    state :confirmed
    state :rejected
    state :cancelled

    event :finish_draft_and_send do
      transition :draft => :to_be_confirmed, :if => lambda { |order|
        order.valid? and !order.order_items.empty?
      }
    end

    event :confirm do
      transition :to_be_confirmed => :confirmed
    end

    event :reject do
      transition :to_be_confirmed => :rejected
    end

    event :cancel do
      transition [:to_be_confirmed, :confirmed] => :cancelled
    end
  end

  def human_status
    I18n.t "label.order.status.#{status}"
  end


  def payment=(values)
    write_attribute(:payment, values.map{|v| Integer(v) rescue nil}.compact) \
      unless values.nil?
  end

  def human_payment
    read_attribute(:payment).join(' / ')
  end

  def discount=(values)
    write_attribute(:discount, values.map{|v| Float(v) rescue nil}.compact) \
      unless values.nil?
  end

  def human_discount
    read_attribute(:discount).map{|v| "#{v}%"}.join(' + ')
  end

  def human_interest
    "#{read_attribute(:interest)}%"
  end

  def human_comission
    "#{read_attribute(:comission)}%"
  end


  def total_price
    partial = order_items.inject(0) { |sum, i| sum + i.total_price }
    discount.each { |d| partial -= partial * d / 100.0 }
    partial + (partial * interest / 100.0)
  end

  def human_total_price
    "R$%.2f" % total_price
  end

  def total_comission
    total_price * comission / 100.0
  end

  def human_total_comission
    "R$#{total_comission}"
  end


  protected
  def must_have_a_carrier_for_fob_type_of_freight
    invalid = (type_of_freight == 'FOB' and carrier.nil?)
    errors.add(:carrier, I18n.t('errors.messages.blank')) if invalid
  end

  def set_carrier_to_nil_if_type_of_freight_is_cif
    self.carrier = nil if read_attribute(:type_of_freight) == 'CIF'
  end

end
