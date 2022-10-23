class AccountBalance < ApplicationRecord
  validates :account_balance, numericality: {minimum: 0.0}
  belongs_to :customer
  belongs_to :mover
end
