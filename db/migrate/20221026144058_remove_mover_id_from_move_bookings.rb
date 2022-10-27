class RemoveMoverIdFromMoveBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :move_bookings, :mover, index:true, foreign_key:true
  end
end
