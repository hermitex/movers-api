class AddLocationToRates < ActiveRecord::Migration[7.0]
  def change
    add_column :rates, :location, :string
  end
end
