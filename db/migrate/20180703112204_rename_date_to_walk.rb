class RenameDateToWalk < ActiveRecord::Migration[5.2]
  def change
    rename_column :walks, :startdate, :date_begin
    rename_column :walks, :enddate, :date_end
  end
end
