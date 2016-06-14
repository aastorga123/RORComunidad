# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160603155727) do

  create_table "bancos", force: :cascade do |t|
    t.string   "nro_cuenta"
    t.string   "nombre_banco"
    t.integer  "tipo_cuenta_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "bancos", ["tipo_cuenta_id"], name: "index_bancos_on_tipo_cuenta_id"

  create_table "categoria", force: :cascade do |t|
    t.string   "nombre_categoria"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "rut"
    t.string   "razon_social"
    t.string   "direccion_cliente"
    t.string   "email_cliente"
    t.string   "telefono_cliente"
    t.string   "representante_legal"
    t.string   "logo"
    t.integer  "usuario_id"
    t.integer  "banco_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "nemo"
  end

  add_index "clientes", ["banco_id"], name: "index_clientes_on_banco_id"
  add_index "clientes", ["usuario_id"], name: "index_clientes_on_usuario_id"

  create_table "perfils", force: :cascade do |t|
    t.string   "nombreperfil"
    t.text     "descripcionperfil"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string   "nombrerol"
    t.text     "descripcionrol"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tipo_cuenta", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubicacions", force: :cascade do |t|
    t.string   "nombreubicacion"
    t.string   "direccion_ubicacion"
    t.integer  "tipo"
    t.integer  "cliente_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "ubicacions", ["cliente_id"], name: "index_ubicacions_on_cliente_id"

  create_table "unidads", force: :cascade do |t|
    t.integer  "numero_unidad"
    t.string   "calle_interna"
    t.integer  "ubicacion_id"
    t.integer  "categoria_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "unidads", ["categoria_id"], name: "index_unidads_on_categoria_id"
  add_index "unidads", ["ubicacion_id"], name: "index_unidads_on_ubicacion_id"

  create_table "usuario_rols", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "rol_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "usuario_rols", ["rol_id"], name: "index_usuario_rols_on_rol_id"
  add_index "usuario_rols", ["usuario_id"], name: "index_usuario_rols_on_usuario_id"

  create_table "usuario_unidads", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "unidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "usuario_unidads", ["unidad_id"], name: "index_usuario_unidads_on_unidad_id"
  add_index "usuario_unidads", ["usuario_id"], name: "index_usuario_unidads_on_usuario_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "perfil_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  #add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
