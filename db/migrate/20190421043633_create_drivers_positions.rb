class CreateDriversPositions < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers_positions do |t|
      t.integer :driver_id
      t.integer :position_id
    end
  end
end
