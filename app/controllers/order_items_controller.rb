class OrderItemsController < InheritedResources::Base

  belongs_to :order

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  def create
    create! do |success, failure|
      success.html do
        redirect_to params[:commit] == I18n.t('label.order_item.save_and_add_another') ?
          new_order_order_item_path(@order_item.order) :
          order_path(@order_item.order)
      end
    end
  end

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.order.plural', orders_path
  end
end
