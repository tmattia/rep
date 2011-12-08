class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :html, :json, :xml

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

end
