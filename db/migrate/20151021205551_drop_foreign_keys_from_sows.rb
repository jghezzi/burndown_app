class DropForeignKeysFromSows < ActiveRecord::Migration
  def change
  	remove_column :sows, :consultant_id
  	remove_column :sows, :project_id
  end
end
