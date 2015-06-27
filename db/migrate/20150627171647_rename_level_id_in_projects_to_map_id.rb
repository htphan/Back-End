class RenameLevelIdInProjectsToMapId < ActiveRecord::Migration
  def change
  	rename_column :projects, :level_id, :map_id
  end
end
