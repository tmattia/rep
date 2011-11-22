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
  validates_each :payment, :allow_nil => true do |record, attr, values|
    record.errors.add(:payment, I18n.t('errors.messages.blank')) \
      if !record.new_record? and values.all?{|value| value.blank? }
    values.each do |value|
      Integer(value) \
        rescue record.errors.add(:payment, I18n.t('errors.messages.not_an_integer')) \
        unless value.blank?
    end
  end

  serialize :discount, Array
  validates_each :discount, :allow_nil => true do |record, attr, values|
    record.errors.add(:discount, I18n.t('errors.messages.blank')) \
      if !record.new_record? and values.all?{|value| value.blank? }
    values.each do |value|
      Float(value) \
        rescue record.errors.add(:discount, I18n.t('errors.messages.not_a_number')) \
        unless value.blank?
    end
  end

  validates :interest, :numericality => { :greater_than_or_equal_to => 0 },
                       :allow_nil => true

  validates :comission, :numericality => { :greater_than_or_equal_to => 0 },
                        :allow_nil => true


  protected
  def must_have_a_carrier_for_fob_type_of_freight
    invalid = (type_of_freight == 'FOB' and carrier.nil?)
    errors.add(:carrier, I18n.t('errors.messages.blank')) if invalid
  end

end
