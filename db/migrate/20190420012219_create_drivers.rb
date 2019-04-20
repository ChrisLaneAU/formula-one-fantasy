class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.text :name
      t.text :nationality
      t.text :image
      t.float :value
      t.integer :constructor_id
      t.integer :fantasy_id

      t.timestamps
    end
  end
end
