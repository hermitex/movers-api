class RemoveCustomerIdFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :customer, index:true, foreign_key:true
  end
end
