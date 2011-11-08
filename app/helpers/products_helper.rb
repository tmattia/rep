module ProductsHelper

  def link_to_product product
    html = "<a href='#{product_path(product)}'>".html_safe
    html << product.code
    html << "<br><small>".html_safe
    html << product.company.name
    html << "</small></a>".html_safe
    html
  end

end
