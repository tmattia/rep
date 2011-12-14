module ClientsHelper

  def link_to_client client
    html = "<a href='#{client_path(client)}'>".html_safe
    html << client.name
    unless client.city.blank?
      html << "<br><small>".html_safe
      html << client.city
      html << "</small>".html_safe
    end
    html << "</a>".html_safe
    html
  end

  def link_to_client_map client
    address = ('%s, %s, %s, %s' % [
      client.street,
      client.zip_code,
      client.city,
      client.state
    ]).gsub(/\s/, '+')
    content_tag :a,
      I18n.t('label.show_on_map'),
      :class => 'map external',
      :href => "http://maps.google.com.br/?ie=UTF8&q=#{address}&z=16&hl=pt-BR"
  end

end
