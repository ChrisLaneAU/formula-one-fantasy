class AddBudgetToFantasies < ActiveRecord::Migration[5.2]
  def change
    add_column :fantasies, :budget, :float, :default => 100.0
  end
end
