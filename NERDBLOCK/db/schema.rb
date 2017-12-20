# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171219094045) do

  create_table "address", force: :cascade do |t|
    t.string "apt_number"
    t.string "building_number"
    t.string "street"
    t.string "city"
    t.string "province"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distributor", force: :cascade do |t|
    t.integer "address_id"
    t.string "distributor_name"
    t.string "distributor_phone"
    t.string "distributor_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genre", force: :cascade do |t|
    t.string "genre_name"
    t.string "genre_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.string "item_description"
    t.decimal "item_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subscription_id"
    t.decimal "monthly_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock", force: :cascade do |t|
    t.integer "distributor_id"
    t.integer "item_quantity"
    t.integer "item_refill_quantity"
    t.decimal "item_refill_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscription_options", force: :cascade do |t|
    t.string "subscription_length"
    t.decimal "subscription_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "genre_id"
    t.integer "option_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "billing_id"
    t.integer "shipping_id"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "userType", default: "c"
    t.string "email"
    t.string "phone"
    t.string "activation_digest"
    t.boolean "activated", default: true
    t.datetime "activated_at"
    t.string "remember_digest"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
