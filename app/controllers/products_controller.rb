class ProductsController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.product.plural', products_path
  end

end
