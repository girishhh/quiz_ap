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

ActiveRecord::Schema.define(version: 20171012084500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "account_histories", force: :cascade do |t|
    t.string  "name"
    t.integer "account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string  "account_name"
    t.integer "person_id"
  end

  add_index "accounts", ["person_id"], name: "index_accounts_on_person_id", using: :btree

  create_table "appointments", id: false, force: :cascade do |t|
    t.integer "doctor_id",  null: false
    t.integer "patient_id", null: false
  end

  create_table "batteries", force: :cascade do |t|
    t.string "name"
    t.string "mobile_id"
  end

  add_index "batteries", ["mobile_id"], name: "index_batteries_on_mobile_id", using: :btree

  create_table "comments", primary_key: "name", force: :cascade do |t|
    t.integer  "num",    limit: 8
    t.string   "str",    limit: 2
    t.datetime "date"
    t.datetime "num2"
    t.string   "descr"
    t.string   "descr2"
    t.string   "test"
    t.string   "phone"
  end

  create_table "comments_subscriptions", id: false, force: :cascade do |t|
    t.integer "comment_id",      null: false
    t.integer "subscription_id", null: false
  end

  create_table "coupans", id: false, force: :cascade do |t|
    t.string  "name"
    t.integer "amount"
    t.integer "guid"
  end

  create_table "coupans_subscriptions", id: false, force: :cascade do |t|
    t.integer "coupan_id",       null: false
    t.integer "subscription_id", null: false
  end

  create_table "create_votes", force: :cascade do |t|
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string  "name"
    t.integer "manager_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string  "name"
    t.integer "post_id"
    t.integer "person_id"
  end

  create_table "likes_posts", id: false, force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "like_id", null: false
  end

  create_table "mobiles", primary_key: "mob", force: :cascade do |t|
    t.string  "guid"
    t.integer "sys_id"
  end

  create_table "money", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paragraphs", force: :cascade do |t|
    t.string   "name"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pays", primary_key: "from", force: :cascade do |t|
  end

  create_table "people", primary_key: "guid", force: :cascade do |t|
    t.string  "name"
    t.integer "sys_id"
    t.boolean "status"
    t.string  "wires",   array: true
    t.hstore  "address"
    t.json    "country"
    t.jsonb   "state"
    t.inet    "ip"
  end

  add_index "people", ["state"], name: "test", using: :gin
  add_index "people", ["state"], name: "test1", using: :gin

  create_table "post_comments", force: :cascade do |t|
    t.string "posts"
    t.string "comments"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "guid"
    t.boolean  "status"
  end

  create_table "posts_postsrds", id: false, force: :cascade do |t|
    t.integer "post_id",    null: false
    t.integer "postsrd_id", null: false
  end

  create_table "postsrds", force: :cascade do |t|
    t.string "name"
  end

  create_table "questions", force: :cascade do |t|
  end

  create_table "questions_tests", id: false, force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "test_id",     null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.text     "question"
    t.string   "opa"
    t.string   "opb"
    t.string   "opc"
    t.string   "opd"
    t.string   "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sails", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string  "name"
    t.decimal "amounnt", precision: 5, scale: 2
  end

  create_table "tables", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temp_tables", force: :cascade do |t|
    t.string "tt"
    t.string "testnum"
  end

  create_table "tests", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "phone_no"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string  "name"
    t.integer "post_id"
  end

end
