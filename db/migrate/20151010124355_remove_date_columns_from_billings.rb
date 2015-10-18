class RemoveDateColumnsFromBillings < ActiveRecord::Migration
  def change

  	remove_column :billings, :date_from
  	remove_column :billings, :date_to

  end
end
