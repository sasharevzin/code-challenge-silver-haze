# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_121_183_724) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "medical_recommendations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "number"
    t.string "issuer"
    t.string "state"
    t.date "expiration_date"
    t.string "image_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_medical_recommendations_on_user_id"
  end

  create_table "state_ids", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "number"
    t.string "state"
    t.date "expiration_date"
    t.string "image_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_state_ids_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "medical_recommendations", "users"
  add_foreign_key "state_ids", "users"
end
