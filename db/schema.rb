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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111122191648) do

  create_table "carriers", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "company_name"
    t.string   "cnpj"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "skype"
    t.string   "msn"
    t.string   "street"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "company_name"
    t.string   "cnpj"
    t.string   "street"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "fax"
    t.string   "msn"
    t.string   "skype"
  end

  create_table "order_items", :force => true do |t|
    t.integer "order_id",   :null => false
    t.integer "product_id", :null => false
    t.integer "quantity",   :null => false
    t.float   "unit_price", :null => false
    t.string  "color"
  end

  create_table "orders", :force => true do |t|
    t.text     "payment"
    t.text     "discount"
    t.float    "interest",                     :default => 0.0
    t.float    "comission",                    :default => 0.0
    t.text     "observations"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
    t.integer  "company_id"
    t.string   "type_of_freight", :limit => 3
    t.integer  "carrier_id"
  end

  create_table "products", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

end
