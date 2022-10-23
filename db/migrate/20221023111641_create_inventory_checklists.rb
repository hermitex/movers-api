class CreateInventoryChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_checklists do |t|
      t.integer :number_of_boxes
      t.string :others
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
