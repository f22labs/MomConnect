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

ActiveRecord::Schema.define(version: 20140926205515) do

  create_table "tip_locales", force: true do |t|
    t.integer "tip_id"
    t.integer "locale_id"
    t.string  "what"
  end

  create_table "tips", force: true do |t|
    t.string  "what"
    t.integer "when"
  end

  create_table "users", force: true do |t|
    t.string   "phone"
    t.integer  "conception_timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "locale_id"
  end

end
