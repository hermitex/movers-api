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

ActiveRecord::Schema[7.0].define(version: 2022_10_23_143253) do
  create_table "account_balances", force: :cascade do |t|
    t.string "balance"
    t.integer "customer_id", null: false
    t.integer "mover_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_account_balances_on_customer_id"
    t.index ["mover_id"], name: "index_account_balances_on_mover_id"
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bed_room_items", force: :cascade do |t|
    t.integer "number_of_beds"
    t.integer "number_of_side_tables"
    t.integer "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_bed_room_items_on_item_id"
  end

  create_table "chats", force: :cascade do |t|
    t.string "sender_id"
    t.string "recipient_id"
    t.text "content"
    t.boolean "is_read"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dining_room_items", force: :cascade do |t|
    t.integer "number_of_dining_chairs"
    t.integer "number_of_dining_tables"
    t.integer "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_dining_room_items_on_item_id"
  end

  create_table "inventory_checklists", force: :cascade do |t|
    t.integer "number_of_boxes"
    t.string "others"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_inventory_checklists_on_customer_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "inventory_checklist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_checklist_id"], name: "index_items_on_inventory_checklist_id"
  end

  create_table "kitchen_items", force: :cascade do |t|
    t.integer "number_of_fridges"
    t.integer "number_of_cookers"
    t.integer "number_of_microwaves"
    t.integer "number_of_washing_machines"
    t.integer "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_kitchen_items_on_item_id"
  end

  create_table "living_room_items", force: :cascade do |t|
    t.integer "number_of_sofas"
    t.integer "number_of_cabinets"
    t.integer "number_of_tables"
    t.integer "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_living_room_items_on_item_id"
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
    t.integer "customer_id", null: false
    t.integer "mover_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_move_bookings_on_customer_id"
    t.index ["mover_id"], name: "index_move_bookings_on_mover_id"
  end

  create_table "movers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.text "message"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "amount"
    t.string "status"
    t.integer "customer_id", null: false
    t.integer "mover_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
    t.index ["mover_id"], name: "index_quotes_on_mover_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "item"
    t.string "distance"
    t.decimal "flat_price"
    t.decimal "price_per_unit"
    t.decimal "dicount"
    t.integer "mover_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mover_id"], name: "index_rates_on_mover_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.integer "mover_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
    t.index ["mover_id"], name: "index_reviews_on_mover_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.integer "mover_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mover_id"], name: "index_specialities_on_mover_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "phone"
    t.string "email"
    t.string "account_type"
    t.string "type"
    t.string "password_digest"
    t.string "avatar_url"
    t.integer "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "account_balances", "customers"
  add_foreign_key "account_balances", "movers"
  add_foreign_key "bed_room_items", "items"
  add_foreign_key "chats", "users"
  add_foreign_key "dining_room_items", "items"
  add_foreign_key "inventory_checklists", "customers"
  add_foreign_key "items", "inventory_checklists"
  add_foreign_key "kitchen_items", "items"
  add_foreign_key "living_room_items", "items"
  add_foreign_key "move_bookings", "customers"
  add_foreign_key "move_bookings", "movers"
  add_foreign_key "notifications", "users"
  add_foreign_key "quotes", "customers"
  add_foreign_key "quotes", "movers"
  add_foreign_key "rates", "movers"
  add_foreign_key "reviews", "customers"
  add_foreign_key "reviews", "movers"
  add_foreign_key "specialities", "movers"
  add_foreign_key "users", "locations"
end
