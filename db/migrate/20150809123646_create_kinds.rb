class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string  :name
      t.text    :description

      t.timestamps
    end
  end
end
