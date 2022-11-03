class MoveBookingSerializer < ActiveModel::Serializer
  attributes :id, :inventory_checklist_id, :moving_from, :moving_to,  :moving_date, :customer_id, :mover_id, :status
  has_one :customer
  has_one :mover
  # has_many :inventory_checklist
end
