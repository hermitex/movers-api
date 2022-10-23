class InventoryChecklistSerializer < ActiveModel::Serializer
  attributes :id, :number_of_beds, :number_of_chairs, :number_of_fridges, :number_of_washing_machines, :number_of_tables
  has_one :customer
end
