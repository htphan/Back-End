class RenameMapIdInGamesToLevelId < ActiveRecord::Migration
  def change
  	rename_column :games, :map_id, :level_id
  end
end
