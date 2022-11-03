class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :payment_date, :amount, :customer_id, :mover_id, :status
  has_one :move_bookings
end
