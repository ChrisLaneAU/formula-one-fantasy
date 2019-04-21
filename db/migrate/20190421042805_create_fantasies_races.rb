class CreateFantasiesRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :fantasies_races do |t|
      t.integer :fantasy_id
      t.integer :race_id
    end
  end
end
