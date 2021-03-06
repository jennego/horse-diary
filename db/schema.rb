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

ActiveRecord::Schema.define(version: 20171205220455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category_img"
    t.string "color"
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
    t.string "color"
    t.string "sex"
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

  create_table "multicategories", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_multicategories_on_category_id"
    t.index ["post_id"], name: "index_multicategories_on_post_id"
  end

  create_table "post_images", force: :cascade do |t|
    t.string "image_url"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_images_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "horse_id"
    t.bigint "user_id"
    t.datetime "date"
    t.index ["horse_id"], name: "index_posts_on_horse_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "reminders", force: :cascade do |t|
    t.text "body"
    t.datetime "date"
    t.bigint "user_id"
    t.bigint "horse_id"
    t.string "upload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["horse_id"], name: "index_reminders_on_horse_id"
    t.index ["user_id"], name: "index_reminders_on_user_id"
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
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.float "longtude"
    t.float "latitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "logs", "horses"
  add_foreign_key "logs", "users"
  add_foreign_key "multicategories", "categories"
  add_foreign_key "multicategories", "posts"
  add_foreign_key "post_images", "posts"
  add_foreign_key "posts", "horses"
  add_foreign_key "posts", "users"
  add_foreign_key "reminders", "horses"
  add_foreign_key "reminders", "users"
  add_foreign_key "too_many_horses", "horses"
  add_foreign_key "too_many_horses", "users"
end
