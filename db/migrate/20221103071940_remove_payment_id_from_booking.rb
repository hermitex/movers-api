class RemovePaymentIdFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :move_bookings, :payment_id, index:true, foreign_key:true
  end
end
