class CreateKitchenItems < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchen_items do |t|
      t.integer :number_of_fridges
      t.integer :number_of_cookers
      t.integer :number_of_microwaves
      t.integer :number_of_washing_machines
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
