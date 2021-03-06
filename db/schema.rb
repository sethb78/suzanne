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

ActiveRecord::Schema.define(version: 20131010194419) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "community_activities", force: true do |t|
    t.string   "activity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fun_facts", force: true do |t|
    t.string   "fact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leadership_experience_and_awards", force: true do |t|
    t.string   "title"
    t.string   "span"
    t.string   "line1"
    t.string   "line2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "praises", force: true do |t|
    t.text     "content"
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_path"
    t.integer  "priority"
  end

  create_table "professional_developments", force: true do |t|
    t.string   "title"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professional_experiences", force: true do |t|
    t.string   "title"
    t.date     "job_start"
    t.date     "job_end"
    t.text     "summary"
    t.string   "bullet_point_1"
    t.string   "bullet_point_2"
    t.string   "bullet_point_3"
    t.string   "bullet_point_4"
    t.string   "bullet_point_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resume_personals", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "cell_phone"
    t.string   "email"
    t.string   "linkedin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip"
  end

  create_table "resumes", force: true do |t|
    t.string   "document"
    t.boolean  "active",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rich_rich_files", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        default: "file"
  end

  create_table "summary_bullet_points", force: true do |t|
    t.string   "feature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "summary_texts", force: true do |t|
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
