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

ActiveRecord::Schema.define(version: 2022_08_26_184205) do

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "location"
    t.string "image_url"
  end

  create_table "arts", force: :cascade do |t|
    t.string "title"
    t.string "medium"
    t.string "description"
    t.string "image_url"
    t.integer "artist_id"
    t.integer "exhibit_id"
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "location"
    t.string "theme"
    t.string "name"
  end

end
