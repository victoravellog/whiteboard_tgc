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

ActiveRecord::Schema.define(version: 2021_10_11_213709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "personajes", force: :cascade do |t|
    t.integer "poder"
    t.integer "ataque"
    t.integer "defensa"
    t.integer "carisma"
    t.integer "espiritu"
    t.bigint "habilidad_especial_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "habilidad_especial", default: 0
    t.bigint "raza_personaje_id", null: false
    t.bigint "tipo_personaje_id", null: false
    t.bigint "user_id"
    t.string "visitor_token"
    t.index ["habilidad_especial_id"], name: "index_personajes_on_habilidad_especial_id"
    t.index ["raza_personaje_id"], name: "index_personajes_on_raza_personaje_id"
    t.index ["tipo_personaje_id"], name: "index_personajes_on_tipo_personaje_id"
    t.index ["user_id"], name: "index_personajes_on_user_id"
  end

  create_table "raza_personajes", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_personajes", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "personajes", "raza_personajes"
  add_foreign_key "personajes", "tipo_personajes"
  add_foreign_key "personajes", "users"
end
