class OrdersController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  def create
    create! do |success, failure|
      success.html do
        redirect_to params[:commit] == I18n.t('label.order.add_items') ?
           new_order_order_item_path(@order) :
           payment_comission_and_shipment_order_path(@order)
      end
    end
  end

  def payment_comission_and_shipment
    @order = Order.find(params[:id])
  end

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.order.plural', orders_path
  end

end
