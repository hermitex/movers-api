class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.datetime :payment_date
      t.decimal :amount
      t.integer :customer_id
      t.integer :mover_id
      t.string :status
      t.references :move_bookings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
