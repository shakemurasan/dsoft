class UserPc::ActivitiesController < ApplicationController
  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all.order(order_at: :desc)
  end
end
