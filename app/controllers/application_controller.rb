class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :html, :json, :xml

  before_filter :add_breadcrumb, :except => [ :index ]

  def parse_date_from_params
    begin
      Date.parse("%s-%s-%s" % [params[:year], params[:month], params[:day]])
    rescue
      nil
    end
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  protected
  def add_breadcrumb
    breadcrumbs.add "label.#{controller_name.singularize}.plural",
                    send("#{controller_name}_path")
  end

end
