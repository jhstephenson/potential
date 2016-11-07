# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160622220102) do

  create_table "other_opportunities", force: :cascade do |t|
    t.string   "opportunity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "socio_cultural_factors", force: :cascade do |t|
    t.string   "factor"
    t.string   "opportunity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "strength_opportunities", force: :cascade do |t|
    t.string   "opportunity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "strengths", force: :cascade do |t|
    t.string   "strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technological_factors", force: :cascade do |t|
    t.string   "factor"
    t.string   "opportunity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "top_fives", force: :cascade do |t|
    t.string   "opportunity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
