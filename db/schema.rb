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

ActiveRecord::Schema.define(version: 20140325100715) do

  create_table "fs_aktuell", id: false, force: true do |t|
    t.string "s1",  limit: 4,  default: "",                    null: false
    t.date   "s2",                                             null: false
    t.time   "s3",             default: '2000-01-01 00:00:00', null: false
    t.string "s4",  limit: 15, default: "",                    null: false
    t.string "s5",  limit: 15, default: "",                    null: false
    t.string "s6",  limit: 15, default: "",                    null: false
    t.string "s7",  limit: 15, default: "",                    null: false
    t.string "s8",  limit: 15, default: "",                    null: false
    t.string "s9",  limit: 15, default: "",                    null: false
    t.string "s10", limit: 15, default: "",                    null: false
    t.string "s11", limit: 15, default: "",                    null: false
    t.string "s12", limit: 15, default: "",                    null: false
    t.string "s13", limit: 15, default: "",                    null: false
    t.string "s14", limit: 15, default: "",                    null: false
    t.string "s15", limit: 15, default: "",                    null: false
    t.string "s16", limit: 15, default: "",                    null: false
    t.string "s17", limit: 15, default: "",                    null: false
    t.string "s18", limit: 15, default: "",                    null: false
    t.string "s19", limit: 15, default: "",                    null: false
    t.string "s20", limit: 15, default: "",                    null: false
  end

  create_table "fs_ara", id: false, force: true do |t|
    t.date   "datum",                    null: false
    t.time   "zeit",                     null: false
    t.string "fob_jet_l",     limit: 10, null: false
    t.string "fob_jet_h",     limit: 10, null: false
    t.string "fob_sk_l",      limit: 10, null: false
    t.string "fob_sk_h",      limit: 10, null: false
    t.string "fob_ebob_l",    limit: 10, null: false
    t.string "fob_ebob_h",    limit: 10, null: false
    t.string "cif_jet_l",     limit: 10, null: false
    t.string "cif_jet_h",     limit: 10, null: false
    t.string "cif_sk_l",      limit: 10, null: false
    t.string "cif_sk_h",      limit: 10, null: false
    t.string "cif_goil_l",    limit: 10, null: false
    t.string "cif_goil_h",    limit: 10, null: false
    t.string "cif_goil01p_l", limit: 10, null: false
    t.string "cif_goil01p_h", limit: 10, null: false
    t.string "fob_goil_l",    limit: 10, null: false
    t.string "fob_goil_h",    limit: 10, null: false
    t.string "fob_goil01p_l", limit: 10, null: false
    t.string "fob_goil01p_h", limit: 10, null: false
    t.string "cif_dies_l",    limit: 10, null: false
    t.string "cif_dies_h",    limit: 10, null: false
    t.string "fob_dies_l",    limit: 10, null: false
    t.string "fob_dies_h",    limit: 10, null: false
    t.string "cif_10p_l",     limit: 10, null: false
    t.string "cif_10p_h",     limit: 10, null: false
    t.string "fob_10p_l",     limit: 10, null: false
    t.string "fob_10p_h",     limit: 10, null: false
    t.string "cif_35p_h",     limit: 10, null: false
    t.string "cif_35p_l",     limit: 10, null: false
    t.string "fob_35p_l",     limit: 10, null: false
    t.string "fob_35p_h",     limit: 10, null: false
    t.string "cifmed_goil_l", limit: 10, null: false
    t.string "cifmed_goil_h", limit: 10, null: false
    t.string "cifmed_dies_l", limit: 10, null: false
    t.string "cifmed_dies_h", limit: 10, null: false
    t.string "fobmed_goil_l", limit: 10, null: false
    t.string "fobmed_goil_h", limit: 10, null: false
    t.string "fobmed_dies_l", limit: 10, null: false
    t.string "fobmed_dies_h", limit: 10, null: false
    t.string "cfob_35p_l",    limit: 10, null: false
    t.string "cfob_35p_h",    limit: 10, null: false
    t.string "cfob_10p_l",    limit: 10, null: false
    t.string "cfob_10p_h",    limit: 10, null: false
  end

  add_index "fs_ara", ["datum"], name: "datum", using: :btree

  create_table "fs_inland", primary_key: "datum", force: true do |t|
    t.string "nord_b_v",    limit: 7,              null: false
    t.string "nord_b_b",    limit: 7,              null: false
    t.string "nordo_b_v",   limit: 7,              null: false
    t.string "nordo_b_b",   limit: 7,              null: false
    t.string "ost_b_v",     limit: 7,              null: false
    t.string "ost_b_b",     limit: 7,              null: false
    t.string "ost_2_b_v",   limit: 7,              null: false
    t.string "ost_2_b_b",   limit: 7,              null: false
    t.string "ost1_b_v",    limit: 7,              null: false
    t.string "ost1_b_b",    limit: 7,              null: false
    t.string "ost2_b_v",    limit: 7,              null: false
    t.string "ost2_b_b",    limit: 7,              null: false
    t.string "ost3_b_v",    limit: 7,              null: false
    t.string "ost3_b_b",    limit: 7,              null: false
    t.string "sost_b_v",    limit: 7,              null: false
    t.string "sost_b_b",    limit: 7,              null: false
    t.string "mitte_b_v",   limit: 7,              null: false
    t.string "mitte_b_b",   limit: 7,              null: false
    t.string "west_b_v",    limit: 7,              null: false
    t.string "west_b_b",    limit: 7,              null: false
    t.string "rhein_b_v",   limit: 7,              null: false
    t.string "rhein_b_b",   limit: 7,              null: false
    t.string "swest_b_v",   limit: 7,              null: false
    t.string "swest_b_b",   limit: 7,              null: false
    t.string "sued_b_v",    limit: 7,              null: false
    t.string "sued_b_b",    limit: 7,              null: false
    t.string "leer1",       limit: 1, default: "", null: false
    t.string "nord_d_v",    limit: 7,              null: false
    t.string "nord_d_b",    limit: 7,              null: false
    t.string "nordo_d_v",   limit: 7,              null: false
    t.string "nordo_d_b",   limit: 7,              null: false
    t.string "ost_d_v",     limit: 7,              null: false
    t.string "ost_d_b",     limit: 7,              null: false
    t.string "ost_2_d_v",   limit: 7,              null: false
    t.string "ost_2_d_b",   limit: 7,              null: false
    t.string "ost1_d_v",    limit: 7,              null: false
    t.string "ost1_d_b",    limit: 7,              null: false
    t.string "ost2_d_v",    limit: 7,              null: false
    t.string "ost2_d_b",    limit: 7,              null: false
    t.string "ost3_d_v",    limit: 7,              null: false
    t.string "ost3_d_b",    limit: 7,              null: false
    t.string "sost_d_v",    limit: 7,              null: false
    t.string "sost_d_b",    limit: 7,              null: false
    t.string "mitte_d_v",   limit: 7,              null: false
    t.string "mitte_d_b",   limit: 7,              null: false
    t.string "west_d_v",    limit: 7,              null: false
    t.string "west_d_b",    limit: 7,              null: false
    t.string "rhein_d_v",   limit: 7,              null: false
    t.string "rhein_d_b",   limit: 7,              null: false
    t.string "swest_d_v",   limit: 7,              null: false
    t.string "swest_d_b",   limit: 7,              null: false
    t.string "sued_d_v",    limit: 7,              null: false
    t.string "sued_d_b",    limit: 7,              null: false
    t.string "leer2",       limit: 1, default: "", null: false
    t.string "nord_h_v",    limit: 7,              null: false
    t.string "nord_h_b",    limit: 7,              null: false
    t.string "nordo_h_v",   limit: 7,              null: false
    t.string "nordo_h_b",   limit: 7,              null: false
    t.string "ost_h_v",     limit: 7,              null: false
    t.string "ost_h_b",     limit: 7,              null: false
    t.string "ost_2_h_v",   limit: 7,              null: false
    t.string "ost_2_h_b",   limit: 7,              null: false
    t.string "ost1_h_v",    limit: 7,              null: false
    t.string "ost1_h_b",    limit: 7,              null: false
    t.string "ost2_h_v",    limit: 7,              null: false
    t.string "ost2_h_b",    limit: 7,              null: false
    t.string "ost3_h_v",    limit: 7,              null: false
    t.string "ost3_h_b",    limit: 7,              null: false
    t.string "sost_h_v",    limit: 7,              null: false
    t.string "sost_h_b",    limit: 7,              null: false
    t.string "mitte_h_v",   limit: 7,              null: false
    t.string "mitte_h_b",   limit: 7,              null: false
    t.string "west_h_v",    limit: 7,              null: false
    t.string "west_h_b",    limit: 7,              null: false
    t.string "rhein_h_v",   limit: 7,              null: false
    t.string "rhein_h_b",   limit: 7,              null: false
    t.string "swest_h_v",   limit: 7,              null: false
    t.string "swest_h_b",   limit: 7,              null: false
    t.string "sued_h_v",    limit: 7,              null: false
    t.string "sued_h_b",    limit: 7,              null: false
    t.string "leer3",       limit: 1, default: "", null: false
    t.string "nord_e_v",    limit: 7,              null: false
    t.string "nord_e_b",    limit: 7,              null: false
    t.string "nordo_e_v",   limit: 7,              null: false
    t.string "nordo_e_b",   limit: 7,              null: false
    t.string "ost_e_v",     limit: 7,              null: false
    t.string "ost_e_b",     limit: 7,              null: false
    t.string "ost_2_e_v",   limit: 7,              null: false
    t.string "ost_2_e_b",   limit: 7,              null: false
    t.string "ost2_e_v",    limit: 7,              null: false
    t.string "ost2_e_b",    limit: 7,              null: false
    t.string "sost_e_v",    limit: 7,              null: false
    t.string "sost_e_b",    limit: 7,              null: false
    t.string "mitte_e_v",   limit: 7,              null: false
    t.string "mitte_e_b",   limit: 7,              null: false
    t.string "west_e_v",    limit: 7,              null: false
    t.string "west_e_b",    limit: 7,              null: false
    t.string "rhein_e_v",   limit: 7,              null: false
    t.string "rhein_e_b",   limit: 7,              null: false
    t.string "swest_e_v",   limit: 7,              null: false
    t.string "swest_e_b",   limit: 7,              null: false
    t.string "sued_e_v",    limit: 7,              null: false
    t.string "sued_e_b",    limit: 7,              null: false
    t.string "leer5",       limit: 1,              null: false
    t.string "basel-h-v",   limit: 7, default: "", null: false
    t.string "basel-h-b",   limit: 7, default: "", null: false
    t.string "zuerich-h-v", limit: 7, default: "", null: false
    t.string "zuerich-h-b", limit: 7, default: "", null: false
    t.string "genf-h-v",    limit: 7, default: "", null: false
    t.string "genf-h-b",    limit: 7, default: "", null: false
    t.string "basel-d-v",   limit: 7, default: "", null: false
    t.string "basel-d-b",   limit: 7, default: "", null: false
    t.string "zuerich-d-v", limit: 7, default: "", null: false
    t.string "zuerich-d-b", limit: 7, default: "", null: false
    t.string "genf-d-v",    limit: 7, default: "", null: false
    t.string "genf-d-b",    limit: 7, default: "", null: false
    t.string "basel-b-v",   limit: 7, default: "", null: false
    t.string "basel-b-b",   limit: 7, default: "", null: false
    t.string "zuerich-b-v", limit: 7, default: "", null: false
    t.string "zuerich-b-b", limit: 7, default: "", null: false
    t.string "genf-b-v",    limit: 7, default: "", null: false
    t.string "genf-b-b",    limit: 7, default: "", null: false
  end

  create_table "inventories", force: true do |t|
    t.string   "instrument_type", limit: 11
    t.string   "price_index",     limit: 11
    t.string   "month",           limit: 11
    t.float    "price_bought_at"
    t.string   "currency",        limit: 3
    t.integer  "quantity"
    t.string   "unit_of_count",   limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_id"
  end

  create_table "stocks", force: true do |t|
    t.text     "name",        limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "price_index", limit: 255
    t.text     "currency",    limit: 255
    t.text     "type",        limit: 255
  end

  create_table "trades", force: true do |t|
    t.string   "order_type",      limit: 11
    t.string   "instrument_type", limit: 11
    t.integer  "quantity"
    t.string   "unit_of_count",   limit: 11
    t.string   "price_index",     limit: 11, default: ""
    t.integer  "stock_id",                                null: false
    t.string   "start_month",     limit: 11
    t.string   "finish_month",    limit: 11
    t.float    "price_bought_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trades", ["stock_id"], name: "stock_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
