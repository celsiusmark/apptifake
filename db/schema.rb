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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130207030553) do

  create_table "debits", :force => true do |t|
    t.string   "user_id"
    t.string   "iid"
    t.string   "store"
    t.string   "type"
    t.string   "currency"
    t.string   "exchange_rate"
    t.float    "fixed_cost"
    t.float    "fixed_cost_converted"
    t.float    "tier"
    t.float    "margin"
    t.string   "title"
    t.string   "category"
    t.string   "url_web"
    t.string   "email_recipient"
    t.string   "sender_name"
    t.integer  "status"
    t.datetime "processed"
    t.datetime "created"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "itunes_appstores", :force => true do |t|
    t.string   "media_type"
    t.string   "genre"
    t.integer  "feed_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prepaid_pins", :force => true do |t|
    t.string   "user_id"
    t.string   "pin_type"
    t.string   "pin_name"
    t.string   "pin_code"
    t.integer  "denomination"
    t.string   "distributor"
    t.datetime "loaded"
    t.date     "expiry"
    t.datetime "created"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "user_id"
    t.string   "q1"
    t.string   "q2"
    t.string   "q3"
    t.string   "q4"
    t.string   "q5"
    t.string   "q6"
    t.string   "q7"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "telco_moneys", :force => true do |t|
    t.string   "user_id"
    t.string   "type"
    t.string   "reference"
    t.integer  "amount"
    t.datetime "expiry"
    t.datetime "created"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_app_searches", :force => true do |t|
    t.string   "user_id"
    t.string   "type"
    t.string   "query"
    t.datetime "created"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid_fb"
    t.string   "full_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "gender"
    t.string   "bday"
    t.string   "location"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "appstore_location", :default => "ph"
    t.string   "ios_device"
    t.string   "number_notify"
    t.string   "number_globe"
    t.string   "number_smart"
    t.datetime "last_access_time"
    t.string   "last_access_page"
    t.datetime "created"
  end

end
