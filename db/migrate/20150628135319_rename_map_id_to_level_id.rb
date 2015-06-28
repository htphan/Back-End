class RenameMapIdToLevelId < ActiveRecord::Migration
  def change
  	rename_column :levels, :map_id, :level_id
  end
end
