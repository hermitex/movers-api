class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content
  has_one :mover
  has_one :customer
end
