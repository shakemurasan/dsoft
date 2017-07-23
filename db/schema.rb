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

ActiveRecord::Schema.define(version: 20170723074121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "times"
    t.string   "alias_title"
    t.text     "contents",    null: false
    t.string   "image_path"
    t.datetime "order_at",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["alias_title"], name: "index_activities_on_alias_title", unique: true, using: :btree
    t.index ["image_path"], name: "index_activities_on_image_path", unique: true, using: :btree
    t.index ["times"], name: "index_activities_on_times", unique: true, using: :btree
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.text     "contents"
    t.string   "image_path"
    t.datetime "order_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
