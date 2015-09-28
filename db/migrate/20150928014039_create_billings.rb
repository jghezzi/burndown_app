class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.date :date_from
      t.date :date_to
      t.float :hours
      t.integer :project_id

      t.timestamps
    end
  end
end
