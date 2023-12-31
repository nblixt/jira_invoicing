# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_12_22_123639) do
  create_table "projects", force: :cascade do |t|
    t.integer "jira_id", null: false
    t.string "key"
    t.string "name"
    t.string "url"
    t.boolean "archived"
    t.boolean "deleted"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jira_id"], name: "index_projects_on_jira_id", unique: true
    t.index ["key"], name: "index_projects_on_key", unique: true
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_users_on_account_id", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
