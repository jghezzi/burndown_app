class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :first_name
      t.string :last_name
      t.integer :sei_loc_id

      t.timestamps
    end
  end
end
