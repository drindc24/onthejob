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

ActiveRecord::Schema.define(:version => 20140520125531) do

  create_table "absences", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "department_id"
    t.integer  "leave_type_id"
    t.date     "date_filed"
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "total_hours",   :precision => 3, :scale => 1
    t.string   "status"
    t.text     "reasons"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "full_name"
    t.date     "date_founded"
    t.string   "business_address"
    t.string   "business_phone"
    t.string   "status"
    t.string   "fax_number"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.integer  "department_head_id"
    t.integer  "company_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.integer  "level"
    t.string   "emergency_contact"
    t.string   "civil_status"
    t.string   "address"
    t.string   "tin"
    t.string   "pagibig"
    t.string   "philhealth"
    t.string   "telephone_number"
    t.string   "mobile_number"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "company_id"
    t.string   "job_title"
    t.integer  "department_id"
  end

  add_index "employees", ["email"], :name => "index_employees_on_email", :unique => true
  add_index "employees", ["reset_password_token"], :name => "index_employees_on_reset_password_token", :unique => true

  create_table "leave_credits", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "leave_type_id"
    t.decimal  "count",         :precision => 3, :scale => 1
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "leave_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
