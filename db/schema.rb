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

ActiveRecord::Schema.define(version: 2019_01_29_163313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.string "dataUri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "friender_id"
    t.bigint "friendee_id"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friendee_id"], name: "index_relationships_on_friendee_id"
    t.index ["friender_id"], name: "index_relationships_on_friender_id"
  end

  create_table "snaps", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "reciever_id"
    t.boolean "viewed"
    t.integer "timer"
    t.string "dataUri"
    t.string "stickerUrl"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reciever_id"], name: "index_snaps_on_reciever_id"
    t.index ["sender_id"], name: "index_snaps_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
