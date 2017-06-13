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

ActiveRecord::Schema.define(version: 20170611121227) do

  create_table "avatars", force: :cascade do |t|
    t.string   "name"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["imageable_type", "imageable_id"], name: "index_avatars_on_imageable_type_and_imageable_id"
  end

  create_table "doctor_worktimes", force: :cascade do |t|
    t.integer  "doctor_id"
    t.string   "days",           default: "[monday, tuesday, wednesday, thurteday, friday]"
    t.integer  "start_hours",    default: 8
    t.integer  "start_minutes",  default: 0
    t.integer  "finish_hours",   default: 18
    t.integer  "finish_minutes", default: 0
    t.integer  "lunch_start",    default: 13
    t.integer  "lunch_finish",   default: 14
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
    t.integer  "duration"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.date     "born"
    t.text     "about"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "manager_id",  default: 0
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.date     "born"
    t.integer  "insurance_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "specialization_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["doctor_id"], name: "index_positions_on_doctor_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.date     "date_start"
    t.date     "date_end"
    t.boolean  "confirm",    default: false
    t.boolean  "finish",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["doctor_id"], name: "index_records_on_doctor_id"
    t.index ["patient_id"], name: "index_records_on_patient_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "born"
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
    t.string   "type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
