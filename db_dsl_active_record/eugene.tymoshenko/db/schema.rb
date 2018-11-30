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

ActiveRecord::Schema.define(version: 2018_11_30_171558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.integer "songs_count", default: 0
    t.bigint "user_id"
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "playlists_songs", id: false, force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "song_id"
    t.index ["playlist_id", "song_id"], name: "index_playlists_songs_on_playlist_id_and_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "album_name"
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "playlist_id"
    t.index ["playlist_id"], name: "index_users_on_playlist_id"
  end

  add_foreign_key "playlists", "users"
  add_foreign_key "songs", "artists"
  add_foreign_key "users", "playlists"
end
