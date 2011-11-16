class CompaniesController < InheritedResources::Base

  before_filter :add_initial_breadcrumbs, :except => [ :index ]

  private
  def add_initial_breadcrumbs
    breadcrumbs.add 'label.company.plural', companies_path
  end

end
