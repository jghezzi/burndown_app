class RecreateConsultantSows < ActiveRecord::Migration
  def change
  	create_table :consultant_sows do |t|
    	t.integer :consultant_id
      t.integer :sow_id

      t.timestamps
    end
  end
end
