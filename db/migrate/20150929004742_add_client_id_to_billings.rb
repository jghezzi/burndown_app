class AddClientIdToBillings < ActiveRecord::Migration
  def change
  
  	add_column :billings, :client_id, :integer

  end
end
