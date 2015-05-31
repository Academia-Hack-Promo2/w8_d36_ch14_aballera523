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

ActiveRecord::Schema.define(version: 20150517215932) do

  create_table "accounts", force: :cascade do |t|
    t.string   "a_type",      limit: 15,                          null: false
    t.string   "number",      limit: 23,                          null: false
    t.decimal  "balance",                precision: 12, scale: 2
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "accounts", ["customer_id"], name: "index_accounts_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 15,  null: false
    t.string   "last_name",  limit: 15
    t.string   "id_number",  limit: 15,  null: false
    t.string   "address",    limit: 100
    t.string   "phone",      limit: 15
    t.string   "mail",       limit: 30
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string   "o_type",      limit: 23,                          null: false
    t.string   "pay_type",    limit: 23,                          null: false
    t.date     "date",                                            null: false
    t.string   "a_origin",    limit: 23
    t.string   "a_target",    limit: 23
    t.decimal  "amount",                 precision: 12, scale: 2
    t.integer  "account_id",  limit: 4
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "operations", ["account_id"], name: "index_operations_on_account_id", using: :btree
  add_index "operations", ["account_id2"], name: "index_operations_on_account_id", using: :btree
  add_index "operations", ["customer_id"], name: "index_operations_on_customer_id", using: :btree

  add_foreign_key "accounts", "customers"
  add_foreign_key "operations", "accounts"
  add_foreign_key "operations", "customers"
end
