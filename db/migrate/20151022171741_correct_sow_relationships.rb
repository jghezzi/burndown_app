class CorrectSowRelationships < ActiveRecord::Migration
  def change
  	remove_column :sows, :sow_id
  	add_column :sows, :client_id, :integer
  	add_column :sows, :project_id, :integer
  end
end
