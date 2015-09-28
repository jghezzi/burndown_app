class DropClientProject < ActiveRecord::Migration
  def change

  	drop_table :client_projects

  end
end
