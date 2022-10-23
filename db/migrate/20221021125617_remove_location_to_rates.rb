class RemoveLocationToRates < ActiveRecord::Migration[7.0]
  def change
    remove_column :rates, :location
  end
end
