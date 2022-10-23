class CreateLivingRoomItems < ActiveRecord::Migration[7.0]
  def change
    create_table :living_room_items do |t|
      t.integer :number_of_sofas
      t.integer :number_of_cabinets
      t.integer :number_of_tables
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
