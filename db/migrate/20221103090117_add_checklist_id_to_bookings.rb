class AddChecklistIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :move_bookings, :inventory_checklist_id, :integer
    add_foreign_key :move_bookings, :inventory_checklists, index:true, foreign_key:true
  end
end
