class AddUserIdInventoryChecklists < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventory_checklists, :user
  end
end
