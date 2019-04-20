class CreateFantasies < ActiveRecord::Migration[5.2]
  def change
    create_table :fantasies do |t|
      t.text :name
      t.text :image
      t.float :budget
      t.integer :points
      t.integer :user_id
      t.integer :driver_id
      t.integer :constructor_id

      t.timestamps
    end
  end
end
