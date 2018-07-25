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

ActiveRecord::Schema.define(version: 2018_07_24_214136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contests", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.integer "type"
    t.integer "max_prize_count"
    t.decimal "value"
    t.date "deadline"
    t.bigint "lottery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lottery_id"], name: "index_contests_on_lottery_id"
  end

  create_table "lotteries", force: :cascade do |t|
    t.string "name"
    t.jsonb "schema"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prizes", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.decimal "value"
    t.string "supplier"
    t.bigint "contest_id"
    t.jsonb "meta_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id"], name: "index_prizes_on_contest_id"
  end

  add_foreign_key "contests", "lotteries"
  add_foreign_key "prizes", "contests"
end
