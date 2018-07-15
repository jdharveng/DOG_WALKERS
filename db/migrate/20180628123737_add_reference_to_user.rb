class AddReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :walks, :user, index: true
  end
end
