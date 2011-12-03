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

  def finish_draft_and_send
    @order = resource
    if @order.can_finish_draft_and_send?
      @order.finish_draft_and_send
      flash[:notice] = I18n.t('label.order.sent')
    else
      flash[:alert] = I18n.t('label.order.cannot_send')
    end
    redirect_to @order
  end

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.order.plural', orders_path
  end

end
