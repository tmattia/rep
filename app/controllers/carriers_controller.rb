class CarriersController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.carrier.plural', carriers_path
  end


end
