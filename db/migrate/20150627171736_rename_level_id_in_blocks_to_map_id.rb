class RenameLevelIdInBlocksToMapId < ActiveRecord::Migration
  def change
  	rename_column :blocks, :level_id, :map_id
  end
end
