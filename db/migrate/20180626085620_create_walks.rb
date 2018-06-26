class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.date :startdate
      t.time :startime
      t.integer :duration

      t.timestamps
    end
  end
end
