class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :value
      t.string :name
      t.integer :level_id

      t.timestamps null: false
    end
  end
end
