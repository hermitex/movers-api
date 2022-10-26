class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :inventory_checklist
end
