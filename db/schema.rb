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

ActiveRecord::Schema.define(version: 2019_10_07_023028) do

  create_table "accessories", force: :cascade do |t|
    t.string "accessorie_name", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycle_accessories", force: :cascade do |t|
    t.integer "bicycle_id", null: false
    t.integer "accessorie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycle_pictures", force: :cascade do |t|
    t.integer "bicycle_id", null: false
    t.string "bicycle_picture", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycle_types", force: :cascade do |t|
    t.string "bicycletype", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycles", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "bicycle_type_id", null: false
    t.integer "handle_id", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.string "description", limit: 200
    t.string "id_picture", null: false
    t.string "buyer_name", null: false
    t.boolean "approval", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_bicycles_on_name"
  end

  create_table "borrow_days", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.date "borrow_day", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name", limit: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "owner_id", null: false
    t.integer "bicycle_id", null: false
    t.string "lend_spot", null: false
    t.string "return_spot", null: false
    t.integer "price", null: false
    t.integer "total_price", null: false
    t.string "payment_method", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposit_types", force: :cascade do |t|
    t.string "deposit_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exhibition_spots", force: :cascade do |t|
    t.integer "bicycle_id", null: false
    t.integer "cyty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handles", force: :cascade do |t|
    t.string "handle_type", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "inquirer_name", limit: 30, null: false
    t.string "inquirer_mail", null: false
    t.string "inquiry_content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lend_days", force: :cascade do |t|
    t.integer "bicycle_id", null: false
    t.date "lend_day", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lend_spots", force: :cascade do |t|
    t.integer "bicycle_id", null: false
    t.string "lend_spot", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "owner_id", null: false
    t.string "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payees", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "deposit_type_id", null: false
    t.string "stor_name", null: false
    t.string "account_number", null: false
    t.string "account_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer "inquiry_id", null: false
    t.string "reply_content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "return_spots", force: :cascade do |t|
    t.integer "bicycle_id", null: false
    t.string "return_spot", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bicycle_id", null: false
    t.string "review_message", limit: 300, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "user_id", null: false
    t.integer "bicycle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string "sex", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
