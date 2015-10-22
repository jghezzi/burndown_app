class CreateClientConsultants < ActiveRecord::Migration
  def change
    create_table :client_consultants do |t|
      t.integer :client_id
      t.integer :consultant_id

      t.timestamps
    end
  end
end
