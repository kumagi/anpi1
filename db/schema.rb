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

ActiveRecord::Schema.define(:version => 20121217052759) do

  create_table "admins", :force => true do |t|
    t.string   "name",            :null => false
    t.string   "password_digest", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "admins", ["name"], :name => "index_admins_on_name", :unique => true

  create_table "anpi_infos", :force => true do |t|
    t.integer  "syachiku"
    t.integer  "hurt_info"
    t.integer  "family_info"
    t.integer  "member_info_id",  :null => false
    t.text     "location_info"
    t.text     "syachiku_reason"
    t.text     "contact"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "anpi_infos", ["member_info_id"], :name => "index_anpi_infos_on_member_info_id", :unique => true

  create_table "mail_sends", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mail_templates", :force => true do |t|
    t.text     "title"
    t.text     "body"
    t.text     "mailName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "member_infos", :force => true do |t|
    t.string   "full_name",  :null => false
    t.string   "birthday",   :null => false
    t.string   "gender",     :null => false
    t.string   "email",      :null => false
    t.integer  "project_id", :null => false
    t.integer  "team_id",    :null => false
    t.integer  "role_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.text     "p_name",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "role_name",  :null => false
    t.integer  "power",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.integer  "selected_mail"
    t.time     "last_send"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "teams", :force => true do |t|
    t.text     "team_name",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
