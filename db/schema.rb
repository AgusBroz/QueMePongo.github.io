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

ActiveRecord::Schema.define(version: 2020_06_01_160433) do

  create_table "atuendos", force: :cascade do |t|
    t.integer "prenda_torso_id"
    t.integer "prenda_piernas_id"
    t.integer "prenda_cabeza_id"
    t.integer "prenda_pies_id"
    t.string "lista_etiquetas"
    t.integer "puntaje"
    t.string "descripcion"
    t.index ["prenda_cabeza_id"], name: "index_atuendos_on_prenda_cabeza_id"
    t.index ["prenda_piernas_id"], name: "index_atuendos_on_prenda_piernas_id"
    t.index ["prenda_pies_id"], name: "index_atuendos_on_prenda_pies_id"
    t.index ["prenda_torso_id"], name: "index_atuendos_on_prenda_torso_id"
  end

  create_table "guardarropas", force: :cascade do |t|
    t.string "nombre"
  end

  create_table "prenda_tipos", force: :cascade do |t|
    t.integer "categoria"
    t.string "nombre"
  end

  create_table "prendas", force: :cascade do |t|
    t.string "color"
    t.string "color_secundario"
    t.integer "textura"
    t.integer "prenda_tipo_id"
    t.integer "guardarropa_id"
    t.index ["guardarropa_id"], name: "index_prendas_on_guardarropa_id"
    t.index ["prenda_tipo_id"], name: "index_prendas_on_prenda_tipo_id"
  end

end
