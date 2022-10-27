class AddNicknameToMovers < ActiveRecord::Migration[7.0]
  def change
    add_column :movers, :nickname, :string
  end
end
