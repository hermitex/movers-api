class CreateAccountBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :account_balances do |t|
      t.decimal :balance
      t.references :customer, null: false, foreign_key: true
      t.references :mover, null: false, foreign_key: true

      t.timestamps
    end
  end
end
