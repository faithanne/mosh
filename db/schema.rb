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

ActiveRecord::Schema.define(:version => 20130826205431) do

  create_table "after_hours_accesses", :force => true do |t|
    t.integer  "location_id"
    t.integer  "semester_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hardware_statuses", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "hardware_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hardwares", :force => true do |t|
    t.string   "serial_number"
    t.string   "aasu_number"
    t.integer  "hardware_type_id"
    t.string   "manufacturer"
    t.string   "model_number"
    t.string   "assigned_to"
    t.text     "specs"
    t.integer  "hardware_status_id"
    t.text     "hardware_status_comment"
    t.integer  "workstation_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "location_id"
  end

  create_table "hours", :force => true do |t|
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.integer  "semester_id"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.datetime "solicit_start"
    t.datetime "submit_deadline"
    t.datetime "test_deadline"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "installs", :force => true do |t|
    t.integer  "image_id"
    t.integer  "software_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "location_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "room"
    t.integer  "location_type_id"
    t.text     "comment"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "request_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.string   "name"
    t.date     "year"
    t.text     "comment"
    t.integer  "software_category_id"
    t.string   "source_url"
    t.text     "instructions"
    t.integer  "request_status_id"
    t.integer  "user_id"
    t.integer  "image_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "software_id"
  end

  create_table "semesters", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.date     "advisement_start"
    t.integer  "term_id"
    t.date     "year"
    t.date     "advisement_end"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "name"
  end

  create_table "silent_installs", :force => true do |t|
    t.string   "file_name"
    t.string   "storage_location"
    t.date     "creation_date"
    t.text     "comment"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "software_id"
  end

  create_table "software_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "software_tests", :force => true do |t|
    t.integer  "student_tester_id"
    t.date     "student_test_date"
    t.integer  "faculty_tester_id"
    t.date     "faculty_test_date"
    t.date     "email_confirmation_date"
    t.text     "comment"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "software_id"
  end

  create_table "softwares", :force => true do |t|
    t.string   "name"
    t.date     "year"
    t.text     "comment"
    t.string   "source_url"
    t.integer  "software_category_id"
    t.string   "version"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "silent_install_id"
    t.integer  "software_test_id"
  end

  create_table "terms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
    t.boolean  "management"
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "workstation_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workstations", :force => true do |t|
    t.integer  "location_id"
    t.integer  "number"
    t.integer  "workstation_type_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
