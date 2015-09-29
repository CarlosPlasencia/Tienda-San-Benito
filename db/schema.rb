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

ActiveRecord::Schema.define(version: 20150918114106) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "has_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "has_categories", ["category_id"], name: "index_has_categories_on_category_id"
  add_index "has_categories", ["product_id"], name: "index_has_categories_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "pre_venta"
    t.float    "pre_comra"
    t.string   "tamaño"
    t.string   "marca"
    t.integer  "stock"
    t.integer  "stock_min"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "cantidad"
    t.float    "precio"
    t.integer  "product_id"
    t.integer  "sale_id"
    t.float    "sub_total"
    t.float    "descuento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "requests", ["product_id"], name: "index_requests_on_product_id"
  add_index "requests", ["sale_id"], name: "index_requests_on_sale_id"

  create_table "sales", force: :cascade do |t|
    t.float    "total"
    t.datetime "fecha"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales", ["user_id"], name: "index_sales_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.string   "usuario",                default: "", null: false
    t.integer  "permission",             default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
