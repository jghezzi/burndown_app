class AddBillRateToSows < ActiveRecord::Migration
  def change
  	add_column :sows, :bill_rate, :decimal, :precision => 2, :scale => 2
  end
end
