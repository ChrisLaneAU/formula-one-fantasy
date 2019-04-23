class CreatePositionsRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :positions_races do |t|
      t.integer :position_id
      t.integer :race_id
    end
  end
end
