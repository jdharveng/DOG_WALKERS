class AddBioToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :bio, :text
  end
end
