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

ActiveRecord::Schema.define(version: 20150823105702) do

  create_table "bids", force: :cascade do |t|
    t.integer  "items_id",    limit: 4
    t.integer  "user_id_id",  limit: 4
    t.integer  "current_bid", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bids", ["items_id"], name: "index_bids_on_items_id", using: :btree
  add_index "bids", ["user_id_id"], name: "index_bids_on_user_id_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "starting_bid", limit: 4
    t.datetime "auction_end"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
