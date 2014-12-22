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

ActiveRecord::Schema.define(version: 20141219202951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "text"
    t.integer  "user_id"
    t.integer  "thread_for_post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["thread_for_post_id"], name: "index_posts_on_thread_for_post_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "signatures", force: true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "signatures", ["user_id"], name: "index_signatures_on_user_id", using: :btree

  create_table "thread_for_posts", force: true do |t|
    t.string   "subject"
    t.string   "text"
    t.integer  "category_id"
    t.integer  "user_id"
    t.boolean  "stickied",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "thread_for_posts", ["category_id"], name: "index_thread_for_posts_on_category_id", using: :btree
  add_index "thread_for_posts", ["user_id"], name: "index_thread_for_posts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.integer  "number_of_posts"
    t.string   "clearance",       default: "registered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
