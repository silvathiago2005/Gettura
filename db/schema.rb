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

ActiveRecord::Schema.define(version: 20170413130542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grupo_permissaos", force: :cascade do |t|
    t.integer  "grupo_id"
    t.integer  "permissao_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "grupo_permissaos", ["grupo_id"], name: "index_grupo_permissaos_on_grupo_id", using: :btree
  add_index "grupo_permissaos", ["permissao_id"], name: "index_grupo_permissaos_on_permissao_id", using: :btree

  create_table "grupos", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagina_principals", force: :cascade do |t|
    t.string   "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissaos", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "email"
    t.integer  "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "grupo_id"
  end

  add_index "pessoas", ["grupo_id"], name: "index_pessoas_on_grupo_id", using: :btree

  create_table "tamires", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "grupo_permissaos", "grupos"
  add_foreign_key "grupo_permissaos", "permissaos"
  add_foreign_key "pessoas", "grupos"
end
