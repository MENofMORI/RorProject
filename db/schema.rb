# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_28_202629) do

  create_table "addresses", force: :cascade do |t|
    t.string "city"
    t.string "province"
    t.string "streat"
    t.integer "home_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "post_code"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "items_shops", id: false, force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "shop_id", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "sname"
    t.string "pesel"
    t.string "email"
    t.string "telefon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "owner_id", null: false
    t.integer "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_shops_on_address_id"
    t.index ["owner_id"], name: "index_shops_on_owner_id"
  end

  add_foreign_key "items", "categories"
  add_foreign_key "shops", "addresses"
  add_foreign_key "shops", "owners"
end
