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

ActiveRecord::Schema.define(version: 2020_07_09_183529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atuendos", force: :cascade do |t|
    t.integer "prenda_torso_id"
    t.integer "prenda_piernas_id"
    t.integer "prenda_cabeza_id"
    t.integer "prenda_pies_id"
    t.integer "puntaje"
    t.string "descripcion"
    t.integer "guardarropa_id"
    t.integer "estilo"
    t.integer "estacion"
    t.integer "usuario_id"
    t.index ["guardarropa_id"], name: "index_atuendos_on_guardarropa_id"
    t.index ["prenda_cabeza_id"], name: "index_atuendos_on_prenda_cabeza_id"
    t.index ["prenda_piernas_id"], name: "index_atuendos_on_prenda_piernas_id"
    t.index ["prenda_pies_id"], name: "index_atuendos_on_prenda_pies_id"
    t.index ["prenda_torso_id"], name: "index_atuendos_on_prenda_torso_id"
    t.index ["usuario_id"], name: "index_atuendos_on_usuario_id"
  end

  create_table "guardarropas", force: :cascade do |t|
    t.string "nombre"
    t.integer "usuario_id"
    t.index ["usuario_id"], name: "index_guardarropas_on_usuario_id"
  end

  create_table "prenda_tipos", force: :cascade do |t|
    t.integer "categoria"
    t.integer "nombre"
  end

  create_table "prendas", force: :cascade do |t|
    t.string "color"
    t.string "color_secundario"
    t.integer "textura"
    t.integer "prenda_tipo_id"
    t.integer "guardarropa_id"
    t.string "nombre"
    t.integer "usuario_id"
    t.index ["guardarropa_id"], name: "index_prendas_on_guardarropa_id"
    t.index ["prenda_tipo_id"], name: "index_prendas_on_prenda_tipo_id"
    t.index ["usuario_id"], name: "index_prendas_on_usuario_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "nombre"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rol_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["rol_id"], name: "index_usuarios_on_rol_id"
  end

end
