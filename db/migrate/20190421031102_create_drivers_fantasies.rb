class CreateDriversFantasies < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers_fantasies do |t|
      t.integer :driver_id
      t.integer :fantasy_id
    end
  end
end
