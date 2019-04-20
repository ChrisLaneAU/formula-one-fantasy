class CreateConstructorsDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :constructors_drivers do |t|
      t.integer :constructor_id
      t.integer :driver_id
    end
  end
end
