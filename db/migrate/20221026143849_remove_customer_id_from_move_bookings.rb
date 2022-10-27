class RemoveCustomerIdFromMoveBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :move_bookings, :customer, index:true, foreign_key:true
    add_reference :move_bookings, :user
  end
end
