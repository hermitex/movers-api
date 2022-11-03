class RemovePayReferenceFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :move_bookings, :payment
  end
end
