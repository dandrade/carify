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

ActiveRecord::Schema.define(version: 2021_10_07_204637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_dealerships", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "dealership_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_car_dealerships_on_car_id"
    t.index ["dealership_id"], name: "index_car_dealerships_on_dealership_id"
  end

  create_table "cars", force: :cascade do |t|
    t.bigint "car_brand_id", null: false
    t.string "model"
    t.string "color"
    t.string "name"
    t.integer "doors"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "price"
    t.integer "kind"
    t.integer "quantity"
    t.index ["car_brand_id"], name: "index_cars_on_car_brand_id"
  end

  create_table "dealerships", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_dealerships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "dealership_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dealership_id"], name: "index_user_dealerships_on_dealership_id"
    t.index ["user_id"], name: "index_user_dealerships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "car_dealerships", "cars"
  add_foreign_key "car_dealerships", "dealerships"
  add_foreign_key "cars", "car_brands"
  add_foreign_key "user_dealerships", "dealerships"
  add_foreign_key "user_dealerships", "users"
end
