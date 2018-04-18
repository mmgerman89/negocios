class CreateTypePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :type_plans do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.boolean :active

      t.timestamps
    end
  end
end
