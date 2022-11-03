class AddFkToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :move_bookings, :payments
    add_reference :move_bookings, :inventory_checklists
  end
end
