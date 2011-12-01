class OrdersController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs

  def index
    if @date = parse_date_from_params
      @orders = Order.where('date(created_at) = ?', @date).all
    else
      @date = Date.today
      @orders = Order.all
    end
  end

  def create
    create! do |success, failure|
      success.html do
        redirect_to params[:commit] == I18n.t('label.order.add_items_submit') ?
           new_order_order_item_path(@order) :
           edit_order_path(@order)
      end
    end
  end

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.order.plural', orders_path
  end

end
