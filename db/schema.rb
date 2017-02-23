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

<<<<<<< HEAD
# I think my(Nick) machine changed the version to this. I'm resolving the conflict by commenting out mine and
# leaving the version I think everyone else is wrong. If catastrophic failure occurs this might need to be switched.
#ActiveRecord::Schema.define(version: 20170223062105) do
=======
ActiveRecord::Schema.define(version: 20170223022003) do
>>>>>>> 20a403c5f28ed00878eeda30f6c4727a77dfd322

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "description"
    t.integer  "project_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.string   "user_first_name"
  end

  create_table "pledges", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reward_id"
    t.float    "dollar_amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["reward_id"], name: "index_pledges_on_reward_id", using: :btree
    t.index ["user_id"], name: "index_pledges_on_user_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "goal"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "user_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "description"
    t.float    "dollar_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "limit"
  end

  create_table "updates", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                                        null: false
    t.string   "crypted_password",                             null: false
    t.string   "salt",                                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.boolean  "admin",                        default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  end

  add_foreign_key "pledges", "rewards"
  add_foreign_key "pledges", "users"
end
