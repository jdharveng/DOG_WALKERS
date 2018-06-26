class AddAddressToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address_line1, :string
    add_column :users, :address_city, :string
    add_column :users, :address_code, :string
    add_column :users, :address_country, :string
  end
end
