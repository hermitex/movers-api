class AddColumnsToInventoryChecklist < ActiveRecord::Migration[7.0]
  def change
    add_column :inventory_checklists, :number_of_boxes, :integer
    add_column :inventory_checklists, :others, :string
  end
end
