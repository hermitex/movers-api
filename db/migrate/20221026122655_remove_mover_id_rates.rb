class RemoveMoverIdRates < ActiveRecord::Migration[7.0]
  def change
    remove_reference :rates, :mover, index:true, foreign_key: true
  end
end
