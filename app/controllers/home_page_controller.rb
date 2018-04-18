class HomePageController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @plans = TypePlan.all.where(active: true)
  end
end
