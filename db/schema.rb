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

ActiveRecord::Schema.define(:version => 20130211024324) do

  create_table "donations", :force => true do |t|
    t.integer  "donor_id"
    t.decimal  "weight"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "donations", ["donor_id"], :name => "index_donations_on_donor_id"

  create_table "donors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "households", :force => true do |t|
    t.string   "household_name"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "households", ["household_name"], :name => "index_households_on_household_name", :unique => true

  create_table "neighbors", :force => true do |t|
    t.decimal  "monthly_income",          :precision => 8, :scale => 2
    t.decimal  "food_stamps",             :precision => 8, :scale => 2
    t.decimal  "rent",                    :precision => 8, :scale => 2
    t.decimal  "utilities",               :precision => 8, :scale => 2
    t.datetime "residency_date"
    t.boolean  "spouse"
    t.integer  "house_rank"
    t.datetime "open_date"
    t.datetime "close_date"
    t.string   "proof_of_residency_type"
    t.datetime "date_of_proof"
    t.boolean  "smokes"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "encrypted_ssn"
    t.string   "encrypted_ssn_iv"
    t.string   "encrypted_ssn_salt"
    t.text     "notes"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "age"
    t.string   "sex"
    t.integer  "household_id"
    t.string   "middle_name"
    t.string   "email"
    t.string   "apt"
    t.boolean  "done"
  end

  add_index "neighbors", ["last_name", "first_name"], :name => "index_neighbors_on_last_name_and_first_name"

  create_table "time_cards", :force => true do |t|
    t.integer  "volunteer_id"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "visits", :force => true do |t|
    t.integer  "neighbor_id"
    t.date     "visited_on",     :null => false
    t.text     "items_received"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "volunteers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
