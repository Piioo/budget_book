class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.string  :name

      t.timestamps
    end
  end
end
