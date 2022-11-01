class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :phone
       t.string :email
      t.string :account_type
      t.string :type
      t.string :password_digest
      t.string :avatar_url
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
