class ModifyBookingsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :move_bookings, :mover_id, :integer
    add_column :move_bookings, :customer_id, :integer
    add_column :move_bookings, :moving_from, :string
    add_column :move_bookings, :moving_to, :string
    add_column :move_bookings,:moving_date, :date


    remove_column :move_bookings, :earliest_date
    remove_column :move_bookings, :latest_date
  end
end
