class UserPlansController < ApplicationController
  def new
  end

  def create
    @user_plan = UserPlan.new()
    type_plan = TypePlan.find(params[:type_plan_id])
    @user_plan.type_plan = type_plan
    @user_plan.user = current_user
    @user_plan.start_date = Date.current
    @user_plan.end_date = Date.current + 60

    respond_to do |format|
      if @user_plan.save
        format.html { redirect_to root_path, notice: 'Plan activado' }
        format.json { render :show, status: :created, location: @user_plan }
      else
        format.html { redirect_to root_path, notice: 'Error al activar plan'}
        format.json { render json: @user_plan.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def user_plan_params
    params.permit(:type_plan_id)
  end
end
