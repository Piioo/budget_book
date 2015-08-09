class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :budget_id
      t.float   :amount
      t.integer :kind_id

      t.timestamps
    end
  end
end
