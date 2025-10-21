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

ActiveRecord::Schema[8.0].define(version: 2025_07_16_124122) do
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "coach_season_teams", force: :cascade do |t|
    t.integer "coach_id", null: false
    t.integer "team_id", null: false
    t.integer "season_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_coach_season_teams_on_coach_id"
    t.index ["season_id"], name: "index_coach_season_teams_on_season_id"
    t.index ["team_id"], name: "index_coach_season_teams_on_team_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_url"
    t.index ["country_id"], name: "index_coaches_on_country_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.integer "continent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "player_season_teams", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "team_id", null: false
    t.integer "season_id", null: false
    t.integer "shirt_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id", "season_id"], name: "index_player_season_teams_on_player_id_and_season_id", unique: true
    t.index ["player_id"], name: "index_player_season_teams_on_player_id"
    t.index ["season_id"], name: "index_player_season_teams_on_season_id"
    t.index ["team_id"], name: "index_player_season_teams_on_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "country_id", null: false
    t.date "birth_date"
    t.integer "height"
    t.integer "weight"
    t.integer "position_id", null: false
    t.decimal "market_value"
    t.string "preferred_foot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_players_on_country_id"
    t.index ["position_id"], name: "index_players_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.integer "start_year"
    t.integer "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "stadium"
    t.integer "squad_size"
    t.float "average_age"
    t.decimal "market_value_total"
    t.string "current_coach"
    t.string "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coach_season_teams", "coaches"
  add_foreign_key "coach_season_teams", "seasons"
  add_foreign_key "coach_season_teams", "teams"
  add_foreign_key "coaches", "countries"
  add_foreign_key "countries", "continents"
  add_foreign_key "player_season_teams", "players"
  add_foreign_key "player_season_teams", "seasons"
  add_foreign_key "player_season_teams", "teams"
  add_foreign_key "players", "countries"
  add_foreign_key "players", "positions"
end
