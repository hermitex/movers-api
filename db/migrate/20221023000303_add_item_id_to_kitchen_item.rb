class AddItemIdToKitchenItem < ActiveRecord::Migration[7.0]
  def change
    add_column :kitchen_items, :item_id, :bigint
  end
end
