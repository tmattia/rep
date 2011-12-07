class ActivitiesController < ApplicationController

  def index
    @activities = Activity.limit(10)
    @pending_orders = Order.pending
  end

end
