class RemoveMoverIdFromSpecialities < ActiveRecord::Migration[7.0]
  def change
    # remove_reference :reviews, :mover, index:true, foreign_key:true
    remove_reference :specialities, :mover, index:true, foreign_key:true
    add_reference :specialities, :user, index:true, foreign_key:true
  end
end
