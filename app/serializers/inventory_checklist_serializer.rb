class InventoryChecklistSerializer < ActiveModel::Serializer
  attributes :id, :number_of_boxes, :others
  has_one :customer
end
