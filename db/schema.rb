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

ActiveRecord::Schema.define(version: 2019_06_04_155225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offers", force: :cascade do |t|
    t.string "state"
    t.bigint "user_id"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed_by_owner"
    t.boolean "completed_by_helper"
    t.text "comments"
    t.index ["task_id"], name: "index_offers_on_task_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_reviews_on_offer_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "address"
    t.datetime "date"
    t.text "description"
    t.integer "amount_coins"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "title"
    t.integer "post_code"
    t.boolean "completed"
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: ""
    t.string "last_name"
    t.integer "rating"
    t.integer "coins", default: 5
    t.string "address"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.text "bio"
    t.string "city"
    t.text "quote"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "offers", "tasks"
  add_foreign_key "offers", "users"
  add_foreign_key "reviews", "offers"
  add_foreign_key "reviews", "users"
  add_foreign_key "tasks", "users"
end
