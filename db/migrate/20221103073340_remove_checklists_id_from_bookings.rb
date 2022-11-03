class RemoveChecklistsIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :move_bookings, :inventory_checklists_id, index:true, foreign_key:true
  end
end
