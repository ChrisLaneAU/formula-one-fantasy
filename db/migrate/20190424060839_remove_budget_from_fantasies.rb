class RemoveBudgetFromFantasies < ActiveRecord::Migration[5.2]
  def change
    remove_column :fantasies, :budget, :float
  end
end
