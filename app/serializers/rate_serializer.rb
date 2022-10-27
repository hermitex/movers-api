class RateSerializer < ActiveModel::Serializer
  attributes :id, :item, :distance, :flat_price, :price_per_unit, :dicount
  belongs_to :user
end
