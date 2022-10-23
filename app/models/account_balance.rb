class AccountBalance < ApplicationRecord
  belongs_to :customer
  belongs_to :mover
end
