class Item < ApplicationRecord
  belongs_to :inventory_checklist
  has_many :bed_room_items, dependent: :destroy
  has_many :living_room_items, dependent: :destroy
  has_many :kitchen_items, dependent: :destroy
  has_many :dining_room_item, dependent: :destroy

end
