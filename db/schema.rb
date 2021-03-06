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

ActiveRecord::Schema.define(version: 20150601163529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "category_id"
    t.date     "date_from"
    t.date     "date_to"
    t.time     "time_from"
    t.time     "time_to"
    t.text     "weekdays"
    t.text     "note"
    t.text     "description"
    t.text     "photo1"
    t.text     "photo2"
    t.text     "photo3"
    t.boolean  "only_for_member"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "vote"
    t.text     "comment"
    t.boolean  "is_anonymous"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "members", force: :cascade do |t|
    t.text     "card_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fiscal_code"
    t.string   "address"
    t.text     "zones_of_interest"
    t.text     "preferred_owners"
    t.text     "preferred_categories"
    t.text     "subcribed_events"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "owner_photos", force: :cascade do |t|
    t.integer  "owner_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "owners", force: :cascade do |t|
    t.string   "nome"
    t.text     "note"
    t.string   "address"
    t.string   "cap"
    t.string   "municipality"
    t.string   "province"
    t.float    "lat"
    t.float    "lon"
    t.string   "level"
    t.date     "signed_since"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "city"
    t.string   "country"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
