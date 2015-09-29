class AddColumnConsultantIdToBillings < ActiveRecord::Migration
  def change
  
  	add_column :billings, :consultant_id, :integer

  end
end
