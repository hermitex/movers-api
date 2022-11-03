class RemovePayReferenceFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :move_bookings, :payment, index:true
  end
end
