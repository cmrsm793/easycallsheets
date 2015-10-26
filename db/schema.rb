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

ActiveRecord::Schema.define(version: 20151026222110) do

  create_table "casts", force: :cascade do |t|
    t.string   "name"
    t.string   "character"
    t.string   "phone_number"
    t.string   "email"
    t.date     "call_time"
    t.integer  "project_id"
    t.integer  "schedule_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "crews", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.string   "phone_number"
    t.string   "email"
    t.date     "call_time"
    t.integer  "project_id"
    t.integer  "schedule_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "projectname"
    t.date     "gendatetime"
    t.date     "shootdatetime"
    t.text     "message"
    t.text     "notes"
    t.string   "address"
    t.boolean  "isarchived"
    t.boolean  "sent"
    t.boolean  "saved"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date     "time"
    t.string   "location"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.date     "timeformat"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
