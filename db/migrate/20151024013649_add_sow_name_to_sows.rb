class AddSowNameToSows < ActiveRecord::Migration
  def change
  	add_column :sows, :name, :string
  end
end
