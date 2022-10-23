class RemoveColumnsFromInventoryChecklist < ActiveRecord::Migration[7.0]
  def change
    remove_column :inventory_checklists, :number_of_beds
    remove_column :inventory_checklists, :number_of_chairs
    remove_column :inventory_checklists, :number_of_fridges
    remove_column :inventory_checklists, :number_of_washing_machines
    remove_column :inventory_checklists, :number_of_tables
  end
end
