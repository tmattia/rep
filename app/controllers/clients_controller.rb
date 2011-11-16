class ClientsController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.client.plural', clients_path
  end


end
