module OrdersHelper

  def link_to_order order
    text = "<span class='id'>#{order.id}</span><br>"
    text << "<span class='company'>#{order.company.name} | </span>"
    text << "<span class='client'>#{order.client.name}</span>"
    link_to text.html_safe, order
  end

  def link_to_order_item item
    text = "<span class='quantity'>#{item.quantity}</span> "
    text << "<span class='code'>#{item.product.code}</span><br>"
    text << "<span class='total_price'>#{number_to_currency item.total_price}</span>"
    text << "<span class='color'> | #{item.color}</span>" if item.color?
    link_to text.html_safe, edit_order_order_item_path(item.order, item)
  end

  def link_to_statuses date
    text = "<ul class='statuses #{params[:status] or 'all'}'>"
    text << "<li class='all'>#{link_to I18n.t('label.all'), date_orders_path(date_hash(date))}</li>"
    [:draft, :to_be_confirmed, :confirmed, :cancelled, :rejected].each do |status|
      status_name = I18n.t("label.order.status.#{status}")
      text << "<li class='#{status}'>#{link_to status_name, {
        :controller => 'orders',
        :action => 'index',
        :day => date.day,
        :month => date.month,
        :year => date.year,
        :status => status
      }}</li>"
    end
    text << "</ul>"
    text.html_safe
  end

  def order_status_label order
    "<div class='label'>
        <span class='order_status #{order.status}'>#{order.human_status}</span>
     </div>".html_safe
  end

end
