class InventoryChecklist < ApplicationRecord
  belongs_to :user
  has_many :kitchen_items
  has_many :bed_room_items
  has_many :living_room_items
  has_many :dining_room_items
end
