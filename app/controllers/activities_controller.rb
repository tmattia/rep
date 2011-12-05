class ActivitiesController < ApplicationController

  def index
    @activities = Activity.limit(10)
  end

end
