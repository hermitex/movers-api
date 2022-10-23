class RateSerializer < ActiveModel::Serializer
  attributes :id, :item, :flat_price, :price_per_unit, :discount
  has_one :mover
end
