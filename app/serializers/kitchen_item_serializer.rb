class KitchenItemSerializer < ActiveModel::Serializer
  attributes :id, :number_of_fridges, :number_of_cookers, :number_of_microwaves, :number_of_washing_machines
end
