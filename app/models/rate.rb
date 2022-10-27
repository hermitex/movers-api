class Rate < ApplicationRecord
  belongs_to :user
  validates :item,  presence: true, uniqueness: true, :on => :create
  validates :distance,  presence: true, length: {minimum: 5}
  validates :flat_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price_per_unit, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :dicount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
