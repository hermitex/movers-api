class RemoveAccountBalanceFromCustomer < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :account_balance
  end
end
