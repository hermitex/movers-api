class RemoveCustomerIdInventoryChecklists < ActiveRecord::Migration[7.0]
  def change
    remove_reference :inventory_checklists, :customer,  index:true, foreign_key: true
  end
end
