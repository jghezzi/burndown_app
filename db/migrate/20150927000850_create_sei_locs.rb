class CreateSeiLocs < ActiveRecord::Migration
  def change
    create_table :sei_locs do |t|
      t.string :name

      t.timestamps
    end
  end
end
