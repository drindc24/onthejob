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

ActiveRecord::Schema.define(:version => 20140429104458) do

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "encrypted_password"
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
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
