class RemoveAccountTypeFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :account_type
  end
end
