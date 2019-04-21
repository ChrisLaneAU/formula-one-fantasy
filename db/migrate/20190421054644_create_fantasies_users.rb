class CreateFantasiesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :fantasies_users do |t|
      t.integer :fantasy_id
      t.integer :user_id
    end
  end
end
