class CreateMoveBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :move_bookings do |t|
      t.date :earliest_date
      t.date :latest_date
      t.string :status
      t.references :customer, null: false, foreign_key: true
      t.references :mover, null: false, foreign_key: true

      t.timestamps
    end
  end
end
