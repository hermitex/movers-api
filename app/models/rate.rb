class Rate < ApplicationRecord
  belongs_to :user
  validates :item_name,  presence: true, :on => :create
  validates :category,  presence: true, inclusion: ["living room", "bedroom", "dining room", "kitchen", "office", "outdoor", "boxes"]
  validates :count, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :distance,  presence: true
  validates :flat_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price_per_unit, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
