class CreateDogwalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :dogwalkers do |t|
      t.integer :hourly_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
