module UserPlansHelper
  def current_plan(user)
    if user
      user.user_plans.where("start_date <= '#{Date.current}' and end_date >= '#{Date.current}'").first
    end
  end
end
