class CreateConstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :constructors do |t|
      t.text :name
      t.text :logo
      t.text :car_image
      t.float :value
      t.integer :driver_id
      t.integer :fantasy_id

      t.timestamps
    end
  end
end
