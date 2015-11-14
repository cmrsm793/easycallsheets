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

ActiveRecord::Schema.define(version: 20151114001455) do

  create_table "cast_projects", force: :cascade do |t|
    t.integer "cast_id"
    t.integer "project_id"
  end

  add_index "cast_projects", ["cast_id"], name: "index_cast_projects_on_cast_id"
  add_index "cast_projects", ["project_id"], name: "index_cast_projects_on_project_id"

  create_table "cast_schedules", force: :cascade do |t|
    t.integer "cast_id"
    t.integer "schedule_id"
  end

  add_index "cast_schedules", ["cast_id"], name: "index_cast_schedules_on_cast_id"
  add_index "cast_schedules", ["schedule_id"], name: "index_cast_schedules_on_schedule_id"

  create_table "casts", force: :cascade do |t|
    t.string   "name"
    t.string   "character"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "call_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "notes"
  end

  create_table "crew_projects", force: :cascade do |t|
    t.integer "crew_id"
    t.integer "project_id"
  end

  add_index "crew_projects", ["crew_id"], name: "index_crew_projects_on_crew_id"
  add_index "crew_projects", ["project_id"], name: "index_crew_projects_on_project_id"

  create_table "crew_schedules", force: :cascade do |t|
    t.integer "crew_id"
    t.integer "schedule_id"
  end

  add_index "crew_schedules", ["crew_id"], name: "index_crew_schedules_on_crew_id"
  add_index "crew_schedules", ["schedule_id"], name: "index_crew_schedules_on_schedule_id"

  create_table "crews", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "call_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "notes"
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "phone"
    t.datetime "time_format"
    t.string   "country"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "projectname"
    t.datetime "gendatetime"
    t.datetime "shootdatetime"
    t.text     "message"
    t.text     "notes"
    t.string   "address"
    t.boolean  "isarchived",    default: false
    t.boolean  "sent",          default: false
    t.boolean  "saved",         default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id"
    t.string   "director"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "time"
    t.string   "location"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "custom_name"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
