class AddReferenceToWalk < ActiveRecord::Migration[5.2]
  def change
    add_reference :walks, :dogwalker, index: true
    add_reference :walks, :dog, index: true
  end
end
