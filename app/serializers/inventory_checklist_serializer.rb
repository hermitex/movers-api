class InventoryChecklistSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :category, :count, :image_url
  belongs_to :user
  has_many :move_bookings
end
