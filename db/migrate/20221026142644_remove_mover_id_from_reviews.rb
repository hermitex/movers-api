class RemoveMoverIdFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :mover
    add_reference :reviews, :user
  end
end
