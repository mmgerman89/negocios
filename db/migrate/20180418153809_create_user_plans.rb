class CreateUserPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :user_plans do |t|
      t.references :user, foreign_key: true
      t.references :type_plan, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
