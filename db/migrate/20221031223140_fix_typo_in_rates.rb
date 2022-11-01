class FixTypoInRates < ActiveRecord::Migration[7.0]
  def change
    rename_column :rates, :dicount, :discount
  end
end
