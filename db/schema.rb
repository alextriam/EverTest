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

ActiveRecord::Schema.define(version: 2021_05_02_115323) do

  create_table "levels", force: :cascade do |t|
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level"], name: "index_levels_on_level", unique: true
  end

  create_table "solutions", force: :cascade do |t|
    t.string "link"
    t.integer "users_id"
    t.integer "tests_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tests_id"], name: "index_solutions_on_tests_id"
    t.index ["users_id"], name: "index_solutions_on_users_id"
  end

  create_table "tests", force: :cascade do |t|
    t.text "text"
    t.string "kind"
    t.integer "levels_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["levels_id"], name: "index_tests_on_levels_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["level_id"], name: "index_users_on_level_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "solutions", "tests", column: "tests_id"
  add_foreign_key "solutions", "users", column: "users_id"
  add_foreign_key "tests", "levels", column: "levels_id"
  add_foreign_key "users", "levels"
end
