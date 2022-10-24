class MoveBooking < ApplicationRecord
  belongs_to :customer
  belongs_to :mover



  def sub_total
    sum = 0
    movers.each do |mover|
      sum += mover.total_price
    end
    sum
  end

end
