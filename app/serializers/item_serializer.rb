class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :inventory_checklist
end
