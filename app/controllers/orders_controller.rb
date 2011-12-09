class OrdersController < InheritedResources::Base

  before_filter :add_breadcrumb

  def index
    @date = parse_date_from_params || Date.today
    if params[:status]
      @orders = Order.where('date(created_at) = ? AND status = ?',
                            @date, params[:status]).all
    else
      @orders = Order.where('date(created_at) = ?', @date).all
    end
    respond_with(@orders)
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
    do_action 'finish_draft_and_send', 'sent', 'send'
  end

  def confirm
    do_action 'confirm', 'confirmed'
  end

  def cancel
    do_action 'cancel', 'cancelled'
  end

  private
  def do_action action, success=nil, error=nil
    @order = resource
    if @order.send("can_#{action}?")
      @order.send(action)
      flash[:notice] = I18n.t("label.order.#{success or action}")
    else
      flash[:alert] = I18n.t("label.order.cannot_#{error or action}")
    end
    redirect_to @order
  end

end
