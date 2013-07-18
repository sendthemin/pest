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

ActiveRecord::Schema.define(:version => 20130718004311) do

  create_table "applications", :force => true do |t|
    t.string   "application_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "appointments", :force => true do |t|
    t.integer  "location_id"
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "appointments", ["location_id"], :name => "index_appointments_on_location_id"
  add_index "appointments", ["user_id"], :name => "index_appointments_on_user_id"

  create_table "areas", :force => true do |t|
    t.string   "area_name"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "areas", ["location_id"], :name => "index_areas_on_location_id"

  create_table "clients", :force => true do |t|
    t.string   "clientname"
    t.text     "locationaddress"
    t.string   "contactname"
    t.string   "contactphone"
    t.string   "contactemail"
    t.boolean  "billingaddresssame"
    t.text     "billingaddress"
    t.string   "billingcontactname"
    t.string   "billingphone"
    t.string   "billingemail"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "combos", :force => true do |t|
    t.integer  "pest_id"
    t.integer  "pesticide_id"
    t.integer  "application_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "combos", ["application_id"], :name => "index_combos_on_application_id"
  add_index "combos", ["pest_id"], :name => "index_combos_on_pest_id"
  add_index "combos", ["pesticide_id"], :name => "index_combos_on_pesticide_id"

  create_table "locations", :force => true do |t|
    t.string   "location_name"
    t.string   "location_address"
    t.string   "location_contact"
    t.string   "location_phone"
    t.string   "location_email"
    t.integer  "client_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "locations", ["client_id"], :name => "index_locations_on_client_id"

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "org_phone"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pesticides", :force => true do |t|
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "active_ingredient"
    t.string   "formulation"
    t.string   "epa_registration"
    t.string   "signal"
    t.boolean  "restricted_use"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "label_url"
    t.float    "dilution_rate"
  end

  create_table "pests", :force => true do |t|
    t.string   "common_name"
    t.string   "scientific_name"
    t.boolean  "invertebrate"
    t.string   "family"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "stops", :force => true do |t|
    t.integer  "appointment_id"
    t.integer  "area_id"
    t.text     "notes"
    t.integer  "combo_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "stops", ["appointment_id"], :name => "index_stops_on_appointment_id"
  add_index "stops", ["area_id"], :name => "index_stops_on_area_id"
  add_index "stops", ["combo_id"], :name => "index_stops_on_combo_id"

  create_table "treatments", :force => true do |t|
    t.integer  "worksheet_id"
    t.integer  "pest_id"
    t.integer  "pesticide_id"
    t.integer  "amount"
    t.string   "unit"
    t.string   "method"
    t.integer  "equipment_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "treatments", ["equipment_id"], :name => "index_treatments_on_equipment_id"
  add_index "treatments", ["pest_id"], :name => "index_treatments_on_pest_id"
  add_index "treatments", ["pesticide_id"], :name => "index_treatments_on_pesticide_id"
  add_index "treatments", ["worksheet_id"], :name => "index_treatments_on_worksheet_id"

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "worksheets", :force => true do |t|
    t.integer  "area_id"
    t.text     "pest_comment"
    t.text     "sanitation_comment"
    t.text     "pestcontrol_comment"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "worksheets", ["area_id"], :name => "index_worksheets_on_area_id"

end
