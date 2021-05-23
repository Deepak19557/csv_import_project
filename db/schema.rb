# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_123649) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.string "timezone"
    t.string "to_email"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.date "date"
    t.string "timezone"
    t.string "name"
    t.string "payment_type"
    t.string "status"
    t.string "currency"
    t.float "gross"
    t.float "fee"
    t.integer "net"
    t.string "from_email"
    t.string "to_email"
    t.string "transaction_id"
    t.string "item_id"
    t.string "frequency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end