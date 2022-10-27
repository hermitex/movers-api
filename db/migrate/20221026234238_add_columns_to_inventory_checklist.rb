class AddColumnsToInventoryChecklist < ActiveRecord::Migration[7.0]
  def change
    add_column :inventory_checklists, :name, :string
    add_column :inventory_checklists, :category, :string
    add_column :inventory_checklists, :count, :integer
    add_column :inventory_checklists, :image_url, :string
  end
end
