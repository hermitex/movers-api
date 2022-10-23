class LivingRoomItemSerializer < ActiveModel::Serializer
  attributes :id, :number_of_sofas, :number_of_cabinets, :number_of_tables
end
