class AddSowIdToBillings < ActiveRecord::Migration
  def change
  	add_column :sows, :sow_id, :integer
  end
end
