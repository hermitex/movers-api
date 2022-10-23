class AddResidenceTypeToRates < ActiveRecord::Migration[7.0]
  def change
    add_column :rates, :residency_type, :string
  end
end
