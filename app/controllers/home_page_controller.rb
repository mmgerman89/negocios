class HomePageController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @plans = TypePlan.all.where(active: true)
    @current_user_plan = helpers.current_plan(current_user)
  end
end
