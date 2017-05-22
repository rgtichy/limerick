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

ActiveRecord::Schema.define(version: 20170522123855) do

  create_table "profiles", force: :cascade do |t|
    t.string   "profile"
    t.string   "age_group"
    t.string   "flag1"
    t.string   "flag2"
    t.string   "flag3"
    t.string   "flag4"
    t.string   "flag5"
    t.string   "flag6"
    t.string   "flag7"
    t.string   "admin"
    t.string   "auth_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["profile_id"], name: "index_users_on_profile_id"
  end

end
