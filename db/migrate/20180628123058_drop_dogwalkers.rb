class DropDogwalkers < ActiveRecord::Migration[5.2]
  def change
    drop_table :dogwalkers
  end
end
