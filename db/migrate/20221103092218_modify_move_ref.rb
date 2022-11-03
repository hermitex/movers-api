class ModifyMoveRef < ActiveRecord::Migration[7.0]
  def change
    remove_reference :payments, :move_booking, index:true
    remove_column :payments, :move_bookings_id, index:true, foreign_key:true
    # add_column :payments,  :move_booking_id, :integer
    add_reference :payments, :move_booking, index:true, foreign_key:true
  end
end
