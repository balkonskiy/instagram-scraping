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

ActiveRecord::Schema.define(version: 20170714153315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: :cascade do |t|
    t.string  "name_japanese"
    t.string  "name"
    t.string  "former_name_japanese"
    t.string  "former_name"
    t.integer "rooms_count"
    t.string  "address"
    t.decimal "latitude",             precision: 10, scale: 6
    t.decimal "longitude",            precision: 10, scale: 6
    t.bigint  "location_id"
  end

  create_table "instagram_posts", force: :cascade do |t|
    t.datetime "date_time"
    t.string   "media_link"
    t.integer  "likes"
    t.string   "poster"
    t.integer  "comments_count"
    t.integer  "hotel_id"
    t.string   "code"
    t.text     "caption"
    t.bigint   "poster_id"
    t.string   "reference_type"
  end

  create_table "posters", force: :cascade do |t|
    t.string  "username"
    t.integer "followers_count"
    t.bigint  "owner_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

end
