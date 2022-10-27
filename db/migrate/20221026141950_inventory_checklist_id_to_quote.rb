class InventoryChecklistIdToQuote < ActiveRecord::Migration[7.0]
  def change
    add_reference :quotes, :inventory_checklist
  end
end
