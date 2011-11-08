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

end
