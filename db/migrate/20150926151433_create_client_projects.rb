class CreateClientProjects < ActiveRecord::Migration
  def change
    create_table :client_projects do |t|

      t.timestamps
    end
  end
end
