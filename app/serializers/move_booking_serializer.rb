class MoveBookingSerializer < ActiveModel::Serializer
  attributes :id, :earliest_date, :latest_date, :status
  has_one :customer
  has_one :mover
end
