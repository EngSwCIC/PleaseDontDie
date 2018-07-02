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

ActiveRecord::Schema.define(version: 2018_07_01_180734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "duties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "importance"
    t.integer "frequency"
    t.bigint "pet_id"
    t.bigint "need_id"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "until"
    t.index ["need_id"], name: "index_duties_on_need_id"
    t.index ["pet_id"], name: "index_duties_on_pet_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_profile_users", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "profile_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_groups_profile_users_on_group_id"
    t.index ["profile_user_id"], name: "index_groups_profile_users_on_profile_user_id"
  end

  create_table "needs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "importance"
    t.integer "frequency"
    t.bigint "specie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specie_id"], name: "index_needs_on_specie_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.bigint "specie_id"
    t.text "bio"
    t.date "birthday"
    t.string "sex"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["group_id"], name: "index_pets_on_group_id"
    t.index ["specie_id"], name: "index_pets_on_specie_id"
  end

  create_table "profile_users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.text "address"
    t.string "phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["user_id"], name: "index_profile_users_on_user_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "duties", "needs", on_delete: :nullify
  add_foreign_key "duties", "pets", on_delete: :cascade
  add_foreign_key "groups_profile_users", "groups", on_delete: :cascade
  add_foreign_key "groups_profile_users", "profile_users", on_delete: :cascade
  add_foreign_key "profile_users", "users", on_delete: :cascade
end
