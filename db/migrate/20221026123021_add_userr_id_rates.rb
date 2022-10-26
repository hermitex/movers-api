class AddUserrIdRates < ActiveRecord::Migration[7.0]
  def change
    add_reference :rates, :user
  end
end
