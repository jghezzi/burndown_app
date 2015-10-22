class DropProjectSows < ActiveRecord::Migration
  def change
  	drop_table :project_sows
  end
end
