require 'spec_helper'

describe 'orders/_actions.html.haml' do

  context 'an order draft' do
    let(:order) { Factory(:order_with_items) }

    before do
      assign(:order, order)
      render
    end

    subject { rendered }

    it { should have_css("form[action='#{finish_draft_and_send_order_path(order)}']") }
  end

  context 'an order waiting confirmation' do
    let(:order) { Factory(:order_to_be_confirmed) }

    before do
      assign(:order, order)
      render
    end

    subject { rendered }

    it { should_not have_css("form[action='#{finish_draft_and_send_order_path(order)}']") }
    it { should have_css("form[action='#{confirm_order_path(order)}']") }
  end

end
