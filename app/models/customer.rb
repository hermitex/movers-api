class Customer < User
  validates :account_balance, presence: true, numericality: {minimum: 0.0}
end
