class AddEndtimeToWalks < ActiveRecord::Migration[5.2]
  def change
    add_column :walks, :enddate, :date
  end
end
