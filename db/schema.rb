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

ActiveRecord::Schema.define(:version => 20120417211559) do

  create_table "campaigns", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "id_client"
    t.integer  "id_soc_net"
    t.integer  "fan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebook_data", :force => true do |t|
    t.integer  "client_id"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "actions"
    t.integer  "new_fans"
    t.integer  "goal_fans"
    t.integer  "prints"
    t.integer  "total_interactions"
    t.integer  "total_reach"
    t.integer  "potential_reach"
    t.float    "total_prints_per_anno"
    t.integer  "total_prints"
    t.integer  "total_clicks_anno"
    t.integer  "fans_through_anno"
    t.float    "agency_investment"
    t.float    "new_stock_investment"
    t.float    "anno_investment"
    t.float    "ctr_anno"
    t.float    "cpm_anno"
    t.float    "cpc_anno"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_fans"
  end

  create_table "fans", :force => true do |t|
    t.integer  "new"
    t.integer  "total"
    t.integer  "goal"
    t.integer  "id_soc_net"
    t.integer  "id_client"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revisions", :force => true do |t|
    t.text     "comment"
    t.text     "suggestion"
    t.text     "company_comment"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_networks", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
