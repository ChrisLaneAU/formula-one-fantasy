class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.text :country
      t.text :flag
      t.text :track_map
      t.text :video
      t.integer :fantasy_id
      t.integer :position_id

      t.timestamps
    end
  end
end
