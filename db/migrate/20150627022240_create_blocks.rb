class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :height
      t.integer :width
      t.integer :x
      t.integer :y
      t.integer :level_id

      t.timestamps null: false
    end
  end
end
