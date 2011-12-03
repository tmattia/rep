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

  def order_status_label order
    "<div class='label'>
        <span class='order_status #{order.status}'>#{order.human_status}</span>
     </div>".html_safe
  end

end
