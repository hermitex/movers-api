class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :amount, :status
  has_one :user
  has_one :mover
end
