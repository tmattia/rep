require 'spec_helper'

describe 'order_items/edit.html.haml' do

  before do
    assign(:order_item, Factory(:order_item))
    render
  end

  subject { rendered }

  it { should have_css("form.order_item") }
  it { should have_css("input[type='submit'][value='#{t('label.delete')}']") }

end
