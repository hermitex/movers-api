class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :mover




   # LOGIC
   def total_price
    if valid_quantity_and_price?
      quantity.to_s.to_d * product.price.to_s.to_d
    else
      0.0
    end
  end

  def valid_quantity_and_price?
    !quantity.to_s.strip.empty? && !product.price.to_s.strip.empty?
  end
end
