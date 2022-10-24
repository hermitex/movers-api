class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.string :sender_id
      t.string :recipient_id
      t.text :content
      t.boolean :is_read
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
