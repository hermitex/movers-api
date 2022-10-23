class ItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :inventory_checklist
end
