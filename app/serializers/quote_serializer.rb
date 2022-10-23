class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :amount, :status
  has_one :customer
  has_one :mover
end
