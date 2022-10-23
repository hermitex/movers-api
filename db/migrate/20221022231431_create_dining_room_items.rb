class CreateDiningRoomItems < ActiveRecord::Migration[7.0]
  def change
    create_table :dining_room_items do |t|
      t.integer :number_of_dining_chairs
      t.integer :number_of_dining_tables

      t.timestamps
    end
  end
end
