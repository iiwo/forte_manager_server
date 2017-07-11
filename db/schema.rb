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

ActiveRecord::Schema.define(version: 20170710145711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forte_manager_settlements", id: :serial, force: :cascade do |t|
    t.string "settle_id"
    t.string "organization_id"
    t.string "location_id"
    t.string "customer_token"
    t.string "transaction_id"
    t.string "customer_id"
    t.string "order_number"
    t.string "reference_id"
    t.datetime "settle_date"
    t.string "settle_type"
    t.string "settle_response_code"
    t.decimal "settle_amount", precision: 8, scale: 2
    t.string "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_forte_manager_settlements_on_customer_id"
    t.index ["customer_token"], name: "index_forte_manager_settlements_on_customer_token"
    t.index ["location_id"], name: "index_forte_manager_settlements_on_location_id"
    t.index ["method"], name: "index_forte_manager_settlements_on_method"
    t.index ["order_number"], name: "index_forte_manager_settlements_on_order_number"
    t.index ["organization_id"], name: "index_forte_manager_settlements_on_organization_id"
    t.index ["reference_id"], name: "index_forte_manager_settlements_on_reference_id"
    t.index ["settle_id"], name: "index_forte_manager_settlements_on_settle_id", unique: true
    t.index ["settle_response_code"], name: "index_forte_manager_settlements_on_settle_response_code"
    t.index ["settle_type"], name: "index_forte_manager_settlements_on_settle_type"
    t.index ["transaction_id"], name: "index_forte_manager_settlements_on_transaction_id"
  end

  create_table "forte_manager_transactions", id: :serial, force: :cascade do |t|
    t.string "transaction_id"
    t.string "organization_id"
    t.string "location_id"
    t.string "customer_token"
    t.string "customer_id"
    t.string "order_number"
    t.string "reference_id"
    t.string "status"
    t.string "action"
    t.decimal "authorization_amount", precision: 8, scale: 2
    t.string "authorization_code"
    t.string "entered_by"
    t.datetime "received_date"
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.string "response_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action"], name: "index_forte_manager_transactions_on_action"
    t.index ["company_name"], name: "index_forte_manager_transactions_on_company_name"
    t.index ["customer_id"], name: "index_forte_manager_transactions_on_customer_id"
    t.index ["customer_token"], name: "index_forte_manager_transactions_on_customer_token"
    t.index ["first_name"], name: "index_forte_manager_transactions_on_first_name"
    t.index ["last_name"], name: "index_forte_manager_transactions_on_last_name"
    t.index ["location_id"], name: "index_forte_manager_transactions_on_location_id"
    t.index ["order_number"], name: "index_forte_manager_transactions_on_order_number"
    t.index ["organization_id"], name: "index_forte_manager_transactions_on_organization_id"
    t.index ["reference_id"], name: "index_forte_manager_transactions_on_reference_id"
    t.index ["response_code"], name: "index_forte_manager_transactions_on_response_code"
    t.index ["status"], name: "index_forte_manager_transactions_on_status"
    t.index ["transaction_id"], name: "index_forte_manager_transactions_on_transaction_id", unique: true
  end

end
