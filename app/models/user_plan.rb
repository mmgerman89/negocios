class UserPlan < ApplicationRecord
  belongs_to :user
  belongs_to :type_plan
end
