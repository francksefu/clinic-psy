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

ActiveRecord::Schema[7.1].define(version: 2024_04_14_213927) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evaluateds", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "cpf"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluator_instruments", force: :cascade do |t|
    t.bigint "evaluator_id", null: false
    t.bigint "instrument_id", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluator_id"], name: "index_evaluator_instruments_on_evaluator_id"
    t.index ["instrument_id"], name: "index_evaluator_instruments_on_instrument_id"
  end

  create_table "evaluators", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "cpf"
    t.string "email"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_evaluators_on_user_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.text "question_one"
    t.text "question_two"
    t.text "question_tree"
    t.text "question_four"
    t.text "question_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "evaluator_instruments", "evaluators"
  add_foreign_key "evaluator_instruments", "instruments"
  add_foreign_key "evaluators", "users"
end
