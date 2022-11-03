class  RemoveInventoryRefFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :move_bookings, :inventory_checklist, index:true
  end
end
