class ItemSerializer < ActiveModel::Serializer
  attributes :id
  # belongs_to :inventory_checklist
  has_many :kitchen_items
  has_many :living_room_items
  has_many :bed_room_items
  has_many :dining_room_item
end
