class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.decimal :amount
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :mover, null: false, foreign_key: true

      t.timestamps
    end
  end
end
