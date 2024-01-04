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

ActiveRecord::Schema[7.0].define(version: 2024_01_03_125629) do
  create_table "beauties", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "beauty_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_beauties_on_event_version_id"
  end

  create_table "ceremonies", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "ceremony_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_ceremonies_on_event_version_id"
  end

  create_table "costumes", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "costume_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_costumes_on_event_version_id"
  end

  create_table "event_versions", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.integer "version_number", null: false
    t.text "details", null: false
    t.decimal "cost", precision: 10, null: false
    t.date "input_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_versions_on_event_id"
  end

  create_table "events", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.date "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "flowers", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "flower_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_flowers_on_event_version_id"
  end

  create_table "foods", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "food_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_foods_on_event_version_id"
  end

  create_table "gifts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "gift_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_gifts_on_event_version_id"
  end

  create_table "guests", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.string "adult_count", null: false
    t.string "child_count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_guests_on_event_version_id"
  end

  create_table "photos", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "photo_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_photos_on_event_version_id"
  end

  create_table "pre_ceremonies", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "pre_ceremony_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_pre_ceremonies_on_event_version_id"
  end

  create_table "prints", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "print_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_prints_on_event_version_id"
  end

  create_table "stagings", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "staging_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_stagings_on_event_version_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "venue_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_venues_on_event_version_id"
  end

  create_table "videos", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "event_version_id", null: false
    t.integer "video_category_id"
    t.text "detail"
    t.decimal "cost", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_version_id"], name: "index_videos_on_event_version_id"
  end

  add_foreign_key "beauties", "event_versions"
  add_foreign_key "ceremonies", "event_versions"
  add_foreign_key "costumes", "event_versions"
  add_foreign_key "event_versions", "events"
  add_foreign_key "events", "users"
  add_foreign_key "flowers", "event_versions"
  add_foreign_key "foods", "event_versions"
  add_foreign_key "gifts", "event_versions"
  add_foreign_key "guests", "event_versions"
  add_foreign_key "photos", "event_versions"
  add_foreign_key "pre_ceremonies", "event_versions"
  add_foreign_key "prints", "event_versions"
  add_foreign_key "stagings", "event_versions"
  add_foreign_key "venues", "event_versions"
  add_foreign_key "videos", "event_versions"
end
