class AccountBalanceSerializer < ActiveModel::Serializer
  attributes :id, :balance
  has_one :customer
  has_one :mover
end
