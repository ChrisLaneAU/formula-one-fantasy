class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.text :_1
      t.text :_2
      t.text :_3
      t.text :_4
      t.text :_5
      t.text :_6
      t.text :_7
      t.text :_8
      t.text :_9
      t.text :_10
      t.text :_11
      t.text :_12
      t.text :_13
      t.text :_14
      t.text :_15
      t.text :_16
      t.text :_17
      t.text :_18
      t.text :_19
      t.text :_20
      t.integer :race_id

      t.timestamps
    end
  end
end
