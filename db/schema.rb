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

ActiveRecord::Schema.define(version: 2019_09_02_080855) do

  create_table "item_offers", force: :cascade do |t|
    t.integer "lineItem_id"
    t.integer "offer_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lineItem_id"], name: "index_item_offers_on_lineItem_id"
    t.index ["offer_id"], name: "index_item_offers_on_offer_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_offers", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "user_id"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_user_offers_on_offer_id"
    t.index ["user_id"], name: "index_user_offers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullName"
    t.string "emailAdress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
