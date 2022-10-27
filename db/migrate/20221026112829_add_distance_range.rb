class AddDistanceRange < ActiveRecord::Migration[7.0]
  def change
    add_column :rates, :start, :decimal
    add_column :rates, :end, :decimal
  end
end
