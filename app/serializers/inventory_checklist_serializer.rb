class InventoryChecklistSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :count, :image_url, :number_of_boxes, :others
  belongs_to :user
end
