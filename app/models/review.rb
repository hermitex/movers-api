class Review < ApplicationRecord
  belongs_to :mover
  belongs_to :customer
end
