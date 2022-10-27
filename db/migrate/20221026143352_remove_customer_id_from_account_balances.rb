class RemoveCustomerIdFromAccountBalances < ActiveRecord::Migration[7.0]
  def change
    remove_reference :account_balances, :customer, index:true, foreign_key:true
    add_reference :account_balances, :user
  end
end
