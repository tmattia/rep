require 'spec_helper'

describe 'orders/_form.html.haml' do

  let(:order) { Factory(:order) }

  before do
    assign(:order, order)
    render
  end

  subject { rendered }

  [:company, :client].each do |field|
    it { should have_field(t("activerecord.attributes.order.#{field}")) }
  end
  it { should have_css("input[type='submit'][value='#{t('label.order.add_items_submit')}']") }
  it { should have_css("input[type='submit'][value='#{t('label.order.payment_comission_and_freightage_submit')}']") }

end

