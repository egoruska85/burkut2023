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

ActiveRecord::Schema[7.0].define(version: 2023_07_05_124719) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructionabouts", force: :cascade do |t|
    t.string "title_organization"
    t.string "motto_ru"
    t.string "motto_en"
    t.string "motto_tm"
    t.text "about_ru"
    t.text "about_en"
    t.text "about_tm"
    t.text "vision_ru"
    t.text "vision_en"
    t.text "vision_tm"
    t.text "values_ru"
    t.text "values_en"
    t.text "values_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructioncertificates", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "body_ru"
    t.text "body_en"
    t.text "body_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contactdetails", force: :cascade do |t|
    t.string "email1"
    t.string "email2"
    t.string "email3"
    t.string "address_ru"
    t.string "address_en"
    t.string "address_tm"
    t.integer "phone1"
    t.integer "phone2"
    t.integer "phone3"
    t.integer "phone4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependproducts", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_dependproducts_on_product_id"
  end

  create_table "factoryabouts", force: :cascade do |t|
    t.string "name"
    t.string "service_ru"
    t.string "service_en"
    t.string "service_tm"
    t.text "body_ru"
    t.text "body_en"
    t.text "body_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factorycarouusels", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.string "desc_ru"
    t.string "desc_en"
    t.string "desc_tm"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factorycertificates", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "desc_ru"
    t.text "desc_en"
    t.text "desc_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logos", force: :cascade do |t|
    t.boolean "main"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mainabouts", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "body_ru"
    t.text "body_en"
    t.text "body_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maincarousels", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.string "link"
    t.string "body_ru"
    t.string "body_en"
    t.string "body_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mottos", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nophotos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peculiarities", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "body_ru"
    t.text "body_en"
    t.text "body_tm"
    t.string "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictureheaderonprojects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "desc_ru"
    t.text "desc_en"
    t.text "desc_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "desc_ru"
    t.text "desc_en"
    t.text "desc_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "body_ru"
    t.text "body_en"
    t.text "body_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "dependproducts", "products"
end
