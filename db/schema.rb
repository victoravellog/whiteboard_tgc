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

ActiveRecord::Schema.define(version: 2021_10_10_144003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "habilidad_especials", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personajes", force: :cascade do |t|
    t.integer "poder"
    t.integer "ataque"
    t.integer "defensa"
    t.integer "carisma"
    t.integer "espiritu"
    t.bigint "habilidad_especial_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "habilidad_especial", default: 0
    t.bigint "raza_personaje_id", null: false
    t.bigint "tipo_personaje_id", null: false
    t.index ["habilidad_especial_id"], name: "index_personajes_on_habilidad_especial_id"
    t.index ["raza_personaje_id"], name: "index_personajes_on_raza_personaje_id"
    t.index ["tipo_personaje_id"], name: "index_personajes_on_tipo_personaje_id"
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

  add_foreign_key "personajes", "habilidad_especials"
  add_foreign_key "personajes", "raza_personajes"
  add_foreign_key "personajes", "tipo_personajes"
end
