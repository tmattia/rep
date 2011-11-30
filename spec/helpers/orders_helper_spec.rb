require 'spec_helper'

describe OrdersHelper do

  describe '#link_to_order_item' do
    let(:item) { Factory(:order_item, :color => 'Red') }

    subject { helper.link_to_order_item(item) }

    it { should have_css("a[href='#{edit_order_order_item_path(item.order, item)}']") }
    it { should have_css("span.quantity") }
    it { should have_css("span.code") }
    it { should have_css("span.color") }
    it { should have_css("span.total_price") }

    context 'when item does not have a color' do
      it 'should not display the color' do
        item.color = nil
        helper.link_to_order_item(item).should_not have_css('span.color')
      end
    end
  end

  describe '#order_status_label' do
    let(:order) { Factory(:order) }

    subject { helper.order_status_label(order) }

    it { should have_css("div.label span.order_status.#{order.status}") }
  end

end
