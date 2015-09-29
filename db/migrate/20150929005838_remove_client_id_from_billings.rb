class RemoveClientIdFromBillings < ActiveRecord::Migration
  def change
  
  	remove_column :billings, :client_id

  end
end
