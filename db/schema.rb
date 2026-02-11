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

ActiveRecord::Schema[7.1].define(version: 2026_02_11_035552) do
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

  create_table "cards", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "cost", null: false
    t.string "rarity", null: false
    t.string "card_type", null: false
    t.string "faction", null: false
    t.boolean "combatant", null: false
    t.string "talent", null: false
    t.boolean "can_epiphany", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_cards_on_character_id"
    t.index ["name"], name: "index_cards_on_name", unique: true
  end

  create_table "character_partners", force: :cascade do |t|
    t.string "tier", null: false
    t.bigint "character_id", null: false
    t.bigint "partner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_partners_on_character_id"
    t.index ["partner_id"], name: "index_character_partners_on_partner_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
    t.string "job", null: false
    t.string "character_attribute", null: false
    t.string "role", null: false
    t.integer "rarity", null: false
    t.string "overviews", default: [], array: true
    t.string "strengths", default: [], array: true
    t.string "weaknesses", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_characters_on_name", unique: true
  end

  create_table "equipments", force: :cascade do |t|
    t.string "name", null: false
    t.string "category", null: false
    t.boolean "rarity", null: false
    t.integer "attack", default: 0, null: false
    t.integer "defense", default: 0, null: false
    t.integer "health", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_equipments_on_name", unique: true
  end

  create_table "partners", force: :cascade do |t|
    t.string "name", null: false
    t.string "job", null: false
    t.integer "rarity", null: false
    t.string "title", null: false
    t.text "backstory", null: false
    t.string "race", null: false
    t.string "birthday", null: false
    t.string "specialty", null: false
    t.string "cv", null: false
    t.string "passive_name", null: false
    t.string "passive_description", default: [], array: true
    t.string "ego_name", null: false
    t.string "ego_description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "save_deck_cards", force: :cascade do |t|
    t.bigint "save_deck_id", null: false
    t.bigint "card_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_save_deck_cards_on_card_id"
    t.index ["save_deck_id"], name: "index_save_deck_cards_on_save_deck_id"
  end

  create_table "save_decks", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.bigint "character_id", null: false
    t.bigint "user_id", null: false
    t.bigint "weapon_id"
    t.bigint "armor_id"
    t.bigint "accessory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessory_id"], name: "index_save_decks_on_accessory_id"
    t.index ["armor_id"], name: "index_save_decks_on_armor_id"
    t.index ["character_id"], name: "index_save_decks_on_character_id"
    t.index ["user_id"], name: "index_save_decks_on_user_id"
    t.index ["weapon_id"], name: "index_save_decks_on_weapon_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cards", "characters"
  add_foreign_key "character_partners", "characters"
  add_foreign_key "character_partners", "partners"
  add_foreign_key "save_deck_cards", "cards"
  add_foreign_key "save_deck_cards", "save_decks"
  add_foreign_key "save_decks", "characters"
  add_foreign_key "save_decks", "equipments", column: "accessory_id"
  add_foreign_key "save_decks", "equipments", column: "armor_id"
  add_foreign_key "save_decks", "equipments", column: "weapon_id"
  add_foreign_key "save_decks", "users"
end
