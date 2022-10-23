class DiningRoomItemSerializer < ActiveModel::Serializer
  attributes :id, :number_of_dining_chairs, :number_of_dining_tables
  has_one :item
end
