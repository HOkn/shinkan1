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

ActiveRecord::Schema.define(version: 20150416015824) do

  create_table "add_school_id_to_users", force: :cascade do |t|
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "like"
    t.integer  "dislike"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultants", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "skype_id"
    t.text     "payto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_users", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.text     "name"
    t.text     "location"
    t.boolean  "kindergarten"
    t.boolean  "primary"
    t.boolean  "middle"
    t.boolean  "high"
    t.text     "program"
    t.boolean  "boarding"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "screen_name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "residence_country"
    t.string   "location"
    t.string   "school"
    t.string   "school2"
    t.text     "program"
    t.text     "bio"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "school_id"
  end

end
