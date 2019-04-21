class CreateConstructorsFantasies < ActiveRecord::Migration[5.2]
  def change
    create_table :constructors_fantasies do |t|
      t.integer :constructor_id
      t.integer :fantasy_id
    end
  end
end
