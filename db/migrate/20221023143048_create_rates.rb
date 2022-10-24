class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.string :item
      t.string :distance
      t.decimal :flat_price
      t.decimal :price_per_unit
      t.decimal :dicount
      t.references :mover, null: false, foreign_key: true

      t.timestamps
    end
  end
end
