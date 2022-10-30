class AddTokenToUsers < ActiveRecord::Migration[7.0]
  def change
    execute "create extension hstore"
    add_column :users, :token, :hstore
  end
end
