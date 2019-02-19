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

ActiveRecord::Schema.define(version: 2018_11_29_181855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string "department"
    t.integer "employer_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "employer_id"
    t.bigint "work_id"
    t.string "first_name"
    t.string "last_name"
    t.index ["employer_id"], name: "index_users_on_employer_id"
    t.index ["work_id"], name: "index_users_on_work_id"
  end

  create_table "works", force: :cascade do |t|
    t.string "profession"
  end

  add_foreign_key "users", "employers"
  add_foreign_key "users", "works"
end
