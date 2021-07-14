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

ActiveRecord::Schema.define(version: 2021_07_13_233215) do

  create_table "order_lines", force: :cascade do |t|
    t.integer "Product_id", null: false
    t.integer "Order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "amount"
    t.float "value"
    t.index ["Order_id"], name: "index_order_lines_on_Order_id"
    t.index ["Product_id"], name: "index_order_lines_on_Product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "price"
    t.float "delivery_tax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "description"
    t.integer "order_number"
    t.float "price"
    t.integer "stock"
    t.integer "take"
    t.integer "pay"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.integer "take"
    t.integer "pay"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "order_lines", "Orders"
  add_foreign_key "order_lines", "Products"
end
