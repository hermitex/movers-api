class MoveBookingSerializer < ActiveModel::Serializer
  attributes :id, :inventory_checklists_id, :moving_from, :moving_to,  :moving_date, :customer_id, :mover_id, :status
  has_one :customer
  has_one :mover
  belongs_to :inventory_checklist
end
