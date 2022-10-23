class CreateBedRoomItems < ActiveRecord::Migration[7.0]
  def change
    create_table :bed_room_items do |t|
      t.integer :number_of_beds
      t.integer :number_of_side_tables
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
