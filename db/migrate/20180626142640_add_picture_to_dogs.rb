class AddPictureToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :picture, :string
    add_column :users, :picture, :string
  end
end
