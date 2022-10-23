class RateSerializer < ActiveModel::Serializer
  attributes :id, :item, :residency_type, :distance, :flat_price, :price_per_unit, :discount
  has_one :mover
end
