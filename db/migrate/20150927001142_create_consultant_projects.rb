class CreateConsultantProjects < ActiveRecord::Migration
  def change
    create_table :consultant_projects do |t|
      t.integer :consultant_id
      t.integer :project_id

      t.timestamps
    end
  end
end
