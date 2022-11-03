class AddPayReferenceToPayment < ActiveRecord::Migration[7.0]
  def change
    # add_reference :payments, :move_bookings, index: true, foreign_key: true
  end
end
