class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.text :content
      t.boolean :is_read
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
