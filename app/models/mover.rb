class Mover < User
  has_many :specialities
  has_many :rates

  has_one :account_balance
end
