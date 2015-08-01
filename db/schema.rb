# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150801150333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aid_offers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "nric"
    t.text     "content"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "aid_requests", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "nric"
    t.text     "content"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "general_offers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "nric"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "state"
    t.string   "township"
    t.string   "status"
    t.text     "description"
    t.float    "lat"
    t.float    "lon"
    t.jsonb    "demographic"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "mm_state"
    t.string   "mm_township"
    t.integer  "seq"
  end

  create_table "news_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "description"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
