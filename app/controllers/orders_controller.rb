class OrdersController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  def payment_comission_and_freightage
    resource
  end

  def create
    create! do |success, failure|
      success.html do
        redirect_to params[:commit] == I18n.t('label.order.add_items_submit') ?
           new_order_order_item_path(@order) :
           payment_comission_and_freightage_order_path(@order)
      end
    end
  end

  def update
    update! do |success, failure|
      failure.html do
        render 'orders/payment_comission_and_freightage'
      end
    end
  end

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.order.plural', orders_path
  end

end
