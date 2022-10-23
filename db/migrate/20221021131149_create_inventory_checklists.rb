class CreateInventoryChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_checklists do |t|
      t.integer :number_of_beds
      t.integer :number_of_chairs
      t.integer :number_of_fridges
      t.integer :number_of_washing_machines
      t.integer :number_of_tables
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
