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

ActiveRecord::Schema.define(version: 2019_08_26_135427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "referent_name"
    t.string "referent_position"
    t.string "referent_image"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commitments", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "user_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_commitments_on_project_id"
    t.index ["skill_id"], name: "index_commitments_on_skill_id"
    t.index ["user_id"], name: "index_commitments_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "association_id"
    t.string "name"
    t.text "description"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.string "image"
    t.string "development_goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["association_id"], name: "index_projects_on_association_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id"
    t.bigint "project_id"
    t.text "description"
    t.string "name"
    t.string "priority_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "image"
    t.text "description"
    t.string "level"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteer_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_volunteer_skills_on_skill_id"
    t.index ["user_id"], name: "index_volunteer_skills_on_user_id"
  end

  add_foreign_key "commitments", "projects"
  add_foreign_key "commitments", "skills"
  add_foreign_key "commitments", "users"
  add_foreign_key "projects", "associations"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "users"
  add_foreign_key "volunteer_skills", "skills"
  add_foreign_key "volunteer_skills", "users"
end
