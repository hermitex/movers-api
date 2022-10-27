class BedRoomItemSerializer < ActiveModel::Serializer
  attributes :id, :number_of_beds, :number_of_side_tables
  belongs_to :item
end
