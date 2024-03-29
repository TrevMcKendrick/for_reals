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

ActiveRecord::Schema.define(version: 20140821055810) do

  create_table "addresses", force: true do |t|
    t.string   "number"
    t.string   "number_direction"
    t.string   "street_name"
    t.string   "street_direction"
    t.string   "street_type"
    t.string   "complex"
    t.string   "unit"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "property_id"
  end

  create_table "counties", force: true do |t|
    t.string   "site_address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
  end

  create_table "properties", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "county_id"
  end

end
