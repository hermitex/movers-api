# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_31_193548) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "account_balances", force: :cascade do |t|
    t.string "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_account_balances_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.string "sender_id"
    t.string "recipient_id"
    t.text "content"
    t.boolean "is_read"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventory_checklists", force: :cascade do |t|
    t.integer "number_of_boxes"
    t.string "others"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "name"
    t.string "category"
    t.integer "count"
    t.string "image_url"
    t.index ["user_id"], name: "index_inventory_checklists_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "longitude"
    t.integer "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_bookings", force: :cascade do |t|
    t.date "earliest_date"
    t.date "latest_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_move_bookings_on_user_id"
  end

  create_table "movers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
  end

  create_table "my_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_my_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_my_users_on_reset_password_token", unique: true
  end

  create_table "notifications", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "amount"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inventory_checklist_id"
    t.bigint "user_id"
    t.index ["inventory_checklist_id"], name: "index_quotes_on_inventory_checklist_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "item_name"
    t.string "distance"
    t.decimal "flat_price"
    t.decimal "price_per_unit"
    t.decimal "dicount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "start"
    t.decimal "end"
    t.bigint "user_id"
    t.string "category"
    t.integer "count"
    t.index ["user_id"], name: "index_rates_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_specialities_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "phone"
    t.string "email"
    t.string "account_type"
    t.string "type"
    t.string "password_digest"
    t.string "avatar_url"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_cofirmed", default: false
    t.string "confirm_token"
    t.string "encrypted_password", limit: 128, default: "", null: false
    t.string "password_salt"
    t.string "authentication_token"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "reset_password_token"
    t.string "remember_token"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "chats", "users"
  add_foreign_key "notifications", "users"
  add_foreign_key "specialities", "users"
  add_foreign_key "users", "locations"
end
