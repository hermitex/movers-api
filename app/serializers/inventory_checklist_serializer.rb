class InventoryChecklistSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :category, :item_count, :image_url
  belongs_to :user
  # belongs_to :move_bookings
end
