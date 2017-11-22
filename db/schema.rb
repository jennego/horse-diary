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

ActiveRecord::Schema.define(version: 20171121201027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horses", force: :cascade do |t|
    t.string "name"
    t.string "show_name"
    t.string "full_name"
    t.string "reg_name"
    t.integer "approx_age"
    t.date "age"
    t.string "breed"
    t.integer "height"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "horse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["horse_id"], name: "index_logs_on_horse_id"
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "horse_id"
    t.bigint "user_id"
    t.datetime "date"
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["horse_id"], name: "index_posts_on_horse_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "too_many_horses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "horse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["horse_id"], name: "index_too_many_horses_on_horse_id"
    t.index ["user_id"], name: "index_too_many_horses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "logs", "horses"
  add_foreign_key "logs", "users"
  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "horses"
  add_foreign_key "posts", "users"
  add_foreign_key "too_many_horses", "horses"
  add_foreign_key "too_many_horses", "users"
end
