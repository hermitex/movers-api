class AddDistanceToRates < ActiveRecord::Migration[7.0]
  def change
    add_column :rates, :distance, :decimal
  end
end
