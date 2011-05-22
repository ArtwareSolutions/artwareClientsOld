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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110522195909) do

  create_table "artworks", :force => true do |t|
    t.string   "artist"
    t.string   "title"
    t.integer  "year"
    t.text     "description"
    t.string   "medium"
    t.string   "dimensions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "exhibitions", :force => true do |t|
    t.string   "title"
    t.string   "site"
    t.string   "city"
    t.date     "opening"
    t.date     "closing"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibitions_artworks", :force => true do |t|
    t.integer  "exhibition_id"
    t.integer  "artwork_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
