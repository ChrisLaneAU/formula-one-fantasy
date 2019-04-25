class RemovePointsFromFantasies < ActiveRecord::Migration[5.2]
  def change
    remove_column :fantasies, :points, :integer
  end
end
