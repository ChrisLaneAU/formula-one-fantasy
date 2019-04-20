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

ActiveRecord::Schema.define(version: 2019_04_20_121345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "constructors", force: :cascade do |t|
    t.text "name"
    t.text "logo"
    t.text "car_image"
    t.float "value"
    t.integer "driver_id"
    t.integer "fantasy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructors_drivers", id: false, force: :cascade do |t|
    t.bigint "constructor_id", null: false
    t.bigint "driver_id", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.text "name"
    t.text "nationality"
    t.text "image"
    t.float "value"
    t.integer "constructor_id"
    t.integer "fantasy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fantasies", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.float "budget"
    t.integer "points"
    t.integer "user_id"
    t.integer "driver_id"
    t.integer "constructor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.text "_1"
    t.text "_2"
    t.text "_3"
    t.text "_4"
    t.text "_5"
    t.text "_6"
    t.text "_7"
    t.text "_8"
    t.text "_9"
    t.text "_10"
    t.text "_11"
    t.text "_12"
    t.text "_13"
    t.text "_14"
    t.text "_15"
    t.text "_16"
    t.text "_17"
    t.text "_18"
    t.text "_19"
    t.text "_20"
    t.integer "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.text "country"
    t.text "flag"
    t.text "track_map"
    t.text "video"
    t.integer "fantasy_id"
    t.integer "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "name"
    t.text "password_digest"
    t.text "image"
    t.integer "fantasy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
