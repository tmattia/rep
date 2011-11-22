require 'spec_helper'

describe 'orders/payment_comission_and_freightage.html.haml' do

  let(:order) { Factory(:order) }

  before do
    assign(:order, order)
    render
  end

  subject { rendered }

  it { should have_css('form.order') }
  [ :discount, :payment, :interest, :comission, :type_of_freight, :carrier,
    :observations ].each do |field|
      it { should have_field(t("activerecord.attributes.order.#{field}")) }
  end
  for i in 1...5 do
    it { should have_css("label[for='order_payment_#{i}']") }
    it { should have_css("label[for='order_discount_#{i}']") }
  end

end
