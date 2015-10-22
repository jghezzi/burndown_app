class CreateProjectSows < ActiveRecord::Migration
  def change
    create_table :project_sows do |t|
      t.integer :sow_id
      t.integer :project_id

      t.timestamps
    end
  end
end
