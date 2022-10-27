class ReplaceForeignKeys < ActiveRecord::Migration[7.0]
  def change
    remove_reference :quotes, :customer, index:true, foreign_key:true
    remove_reference :quotes, :mover, index:true, foreign_key:true
    add_reference :quotes, :user
  end
end
