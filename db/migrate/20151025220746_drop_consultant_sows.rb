class DropConsultantSows < ActiveRecord::Migration
  def change
  	drop_table :consultant_sows
  end
end
