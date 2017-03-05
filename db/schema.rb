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

ActiveRecord::Schema.define(version: 20170305182043) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "address_line"
    t.string   "city"
    t.string   "zip_code"
    t.integer  "company_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.float    "latitude",     limit: 24
    t.float    "longitude",    limit: 24
    t.string   "country"
    t.string   "state"
    t.index ["company_id"], name: "index_addresses_on_company_id", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "nearest_city"
    t.string   "distance"
    t.string   "population"
    t.integer  "category_id"
    t.text     "description",  limit: 65535
    t.string   "keywords"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["category_id"], name: "index_companies_on_category_id", using: :btree
  end

  create_table "financial_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "last_reported"
    t.decimal  "revenue",       precision: 10
    t.decimal  "income",        precision: 10
    t.integer  "company_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["company_id"], name: "index_financial_informations_on_company_id", using: :btree
  end

  add_foreign_key "addresses", "companies"
  add_foreign_key "companies", "categories"
  add_foreign_key "financial_informations", "companies"
end
