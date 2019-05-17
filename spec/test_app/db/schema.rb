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

ActiveRecord::Schema.define(version: 2019_05_17_060044) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories_posts", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "post_id", null: false
  end

  create_table "phcaccounts_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "org_id"
    t.integer "role"
    t.boolean "terms_of_service"
    t.index ["email"], name: "index_phcaccounts_users_on_email", unique: true
    t.index ["firstname"], name: "index_phcaccounts_users_on_firstname"
    t.index ["lastname"], name: "index_phcaccounts_users_on_lastname"
    t.index ["org_id"], name: "index_phcaccounts_users_on_org_id", unique: true
    t.index ["reset_password_token"], name: "index_phcaccounts_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_phcaccounts_users_on_username", unique: true
  end

  create_table "phcpress_article_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "slug"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcpress_article_posts", force: :cascade do |t|
    t.string "post_title"
    t.text "post_text"
    t.string "post_status"
    t.string "post_image"
    t.string "slug"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcpress_category_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "press_category_versions"
  end

  create_table "phcpress_friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "phcpress_fri_id_slugable_scope_type", unique: true
    t.index ["slug", "sluggable_type"], name: "index_phcpress_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_phcpress_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_phcpress_friendly_id_slugs_on_sluggable_type"
  end

  create_table "phcpress_post_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "press_post_versions"
  end

end
