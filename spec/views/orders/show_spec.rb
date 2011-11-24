require 'spec_helper'

describe 'orders/show.html.haml' do

  let(:order) { Factory(:order) }

  before do
    assign(:order, order)
    render
  end

  subject { rendered }

  it { should have_css(".order_client a[href='#{client_path(order.client)}']") }
  it { should have_css(".order_company a[href='#{company_path(order.company)}']") }
  [:created_at, :payment, :discount, :interest, :comission].each do |field|
    it { should have_css(".order_#{field}") }
  end

  context 'when the order has CIF type of freight' do
    before do
      order.type_of_freight = 'CIF'
      order.carrier = nil
      order.save
      render
    end

    subject { rendered }

    it { should have_css('.order_type_of_freight') }
    it { should_not have_css('.order_carrier') }
  end

  context 'when the order has FOB type of freight' do
    before do
      order.type_of_freight = 'FOB'
      order.carrier = Factory(:carrier)
      order.save
      render
    end

    subject { rendered }

    it { should have_css('.order_type_of_freight') }
    it { should have_css(".order_carrier a[href='#{carrier_path(order.carrier)}']") }
  end

  context 'when the order does not have observations' do
    before do
      order.observations = nil
      order.save
      render
    end

    subject { rendered }

    it { should_not have_css('.order_observations') }
  end

  context 'when the order has observations' do
    before do
      order.observations = 'stuff'
      order.save
      render
    end

    subject { rendered }

    it { should have_css('.order_observations') }
  end

end
