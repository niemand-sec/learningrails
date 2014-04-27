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

ActiveRecord::Schema.define(version: 20140427230223) do

  create_table "comandos", force: true do |t|
    t.string   "instrucion"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herramienta", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "puerto_servicios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_puerto"
    t.integer  "id_servicio"
  end

  create_table "puertos", force: true do |t|
    t.integer  "numero"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicio_version_sos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "nombre"
    t.string   "descipcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_operativos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_de_servicios", force: true do |t|
    t.string   "nombre"
    t.string   "descipcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "version_servicios", force: true do |t|
    t.string   "version"
    t.date     "fechaInicio"
    t.date     "fechaFin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "version_sos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vulnerabilidad_version_sos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vulnerabilidads", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.date     "fechaDescubrimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
