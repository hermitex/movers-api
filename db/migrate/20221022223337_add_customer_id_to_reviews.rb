class AddCustomerIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :customer_id, :bigint, null: false
  end
end
