class AddDateToBillings < ActiveRecord::Migration
  def change
  
  	add_column :billings, :bill_date, :date

  end
end
