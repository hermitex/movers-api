class RateSerializer < ActiveModel::Serializer
  attributes :id, :item, :distance, :flat_price, :price_per_unit, :dicount
  has_one :mover
end
