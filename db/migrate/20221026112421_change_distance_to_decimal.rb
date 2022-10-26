class ChangeDistanceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :rates, :distance, :string
  end
end
