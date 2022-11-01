class RateSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :count, :category, :distance, :flat_price, :price_per_unit, :discount
  belongs_to :user
end
