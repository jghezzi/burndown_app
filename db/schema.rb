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

ActiveRecord::Schema.define(version: 20151024013649) do

  create_table "billings", force: true do |t|
    t.float    "hours"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consultant_id"
    t.date     "bill_date"
    t.integer  "sow_id"
  end

  create_table "client_consultants", force: true do |t|
    t.integer  "client_id"
    t.integer  "consultant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultant_projects", force: true do |t|
    t.integer  "consultant_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultant_sows", force: true do |t|
    t.integer  "consultant_id"
    t.integer  "sow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultants", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "sei_loc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "sei_locs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sows", force: true do |t|
    t.date     "begin_date"
    t.date     "end_date"
    t.float    "sow_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "bill_rate",  precision: 2, scale: 2
    t.integer  "client_id"
    t.integer  "project_id"
    t.string   "name"
  end

end
