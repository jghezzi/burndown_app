class AddColumnsToClientProjects < ActiveRecord::Migration
  def change
  
  	add_column :client_projects, :client_id, :integer
  	add_column :client_projects, :project_id, :integer

  end
end
