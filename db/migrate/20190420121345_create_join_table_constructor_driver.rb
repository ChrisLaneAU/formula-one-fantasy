class CreateJoinTableConstructorDriver < ActiveRecord::Migration[5.2]
  def change
    create_join_table :constructors, :drivers do |t|
      # t.index [:constructor_id, :driver_id]
      # t.index [:driver_id, :constructor_id]
    end
  end
end
