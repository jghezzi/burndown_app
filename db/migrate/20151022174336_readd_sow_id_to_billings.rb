class ReaddSowIdToBillings < ActiveRecord::Migration
  def change
  	add_column :billings, :sow_id, :integer
  end
end
