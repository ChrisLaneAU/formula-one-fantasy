class AddPointsToFantasies < ActiveRecord::Migration[5.2]
  def change
    add_column :fantasies, :points, :integer, :default => 0
  end
end
