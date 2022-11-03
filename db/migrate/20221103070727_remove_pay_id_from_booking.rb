class RemovePayIdFromBooking < ActiveRecord::Migration[7.0]
  def change
      remove_column :move_bookings, :payments_id
  end
end
