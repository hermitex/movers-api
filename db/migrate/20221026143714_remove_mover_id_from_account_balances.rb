class RemoveMoverIdFromAccountBalances < ActiveRecord::Migration[7.0]
  def change
    remove_reference :account_balances, :mover, index:true, foreign_key:true
  end
end
