class Order < ActiveRecord::Base

  belongs_to :client
  validates :client_id, :presence => true

  belongs_to :company
  validates :company_id, :presence => true

  has_many :order_items

  belongs_to :carrier
  validates :type_of_freight, :inclusion => %w(CIF FOB), :on => :update
  validate :must_have_a_carrier_for_fob_type_of_freight

  serialize :payment, Array
  validates :payment, :presence => true, :on => :update

  serialize :discount, Array
  validates :discount, :presence => true, :on => :update

  validates :interest, :numericality => { :greater_than_or_equal_to => 0 },
                       :allow_nil => true

  validates :comission, :numericality => { :greater_than_or_equal_to => 0 },
                        :allow_nil => true


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


  protected
  def must_have_a_carrier_for_fob_type_of_freight
    invalid = (type_of_freight == 'FOB' and carrier.nil?)
    errors.add(:carrier, I18n.t('errors.messages.blank')) if invalid
  end

end
