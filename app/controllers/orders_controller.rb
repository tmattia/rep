class OrdersController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs

  def index
    @date = parse_date_from_params || Date.today
    if params[:status]
      @orders = Order.where('date(created_at) = ? AND status = ?',
                            @date, params[:status]).all
    else
      @orders = Order.where('date(created_at) = ?', @date).all
    end
  end

  def new
    @order = Order.new
    @order.company = Company.find(params[:company]) if params[:company]
    @order.client = Client.find(params[:client]) if params[:client]
    respond_with(@order)
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

  def confirm
    @order = resource
    if @order.can_confirm?
      @order.confirm
      flash[:notice] = I18n.t('label.order.confirmed')
    else
      flash[:alert] = I18n.t('label.order.cannot_confirm')
    end
    redirect_to @order
  end

  def cancel
    @order = resource
    if @order.can_cancel?
      @order.cancel
      flash[:notice] = I18n.t('label.order.cancelled')
    else
      flash[:alert] - I18n.t('label.order.cannot_cancel')
    end
    redirect_to @order
  end

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.order.plural', orders_path
  end

end
