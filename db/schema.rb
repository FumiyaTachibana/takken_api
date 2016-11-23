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

ActiveRecord::Schema.define(version: 20161121054328) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  end

  create_table "big_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_big_tags_on_name", using: :btree
  end

  create_table "middle_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "big_tag_id"
    t.string   "name"
    t.integer  "importance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["big_tag_id", "name", "importance"], name: "index_middle_tags_on_big_tag_id_and_name_and_importance", using: :btree
  end

  create_table "past_question_choices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "past_question_id"
    t.text     "content",          limit: 65535
    t.string   "judgement"
    t.text     "description",      limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["past_question_id", "judgement"], name: "index_past_question_choices_on_past_question_id_and_judgement", using: :btree
  end

  create_table "past_question_middle_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "past_question_id"
    t.integer  "middle_tag_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["middle_tag_id"], name: "index_past_question_middle_tags_on_middle_tag_id", using: :btree
    t.index ["past_question_id"], name: "index_past_question_middle_tags_on_past_question_id", using: :btree
  end

  create_table "past_question_small_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "past_question_id"
    t.integer  "small_tag_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["past_question_id"], name: "index_past_question_small_tags_on_past_question_id", using: :btree
    t.index ["small_tag_id"], name: "index_past_question_small_tags_on_small_tag_id", using: :btree
  end

  create_table "past_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "year_tag_id"
    t.integer  "big_tag_id"
    t.integer  "importance"
    t.string   "difficulty"
    t.text     "content",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["importance"], name: "index_past_questions_on_importance", using: :btree
    t.index ["year_tag_id", "big_tag_id"], name: "index_past_questions_on_year_tag_id_and_big_tag_id", using: :btree
  end

  create_table "question_choices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "question_id"
    t.text     "content",     limit: 65535
    t.string   "judgement"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["question_id", "judgement"], name: "index_question_choices_on_question_id_and_judgement", using: :btree
  end

  create_table "question_middle_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "question_id"
    t.integer  "middle_tag_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["question_id", "middle_tag_id"], name: "index_question_middle_tags_on_question_id_and_middle_tag_id", using: :btree
  end

  create_table "question_small_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "question_id"
    t.integer  "small_tag_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["question_id", "small_tag_id"], name: "index_question_small_tags_on_question_id_and_small_tag_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "year_tag_id"
    t.integer  "big_tag_id"
    t.integer  "importance"
    t.string   "difficulty"
    t.text     "content",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["importance"], name: "index_questions_on_importance", using: :btree
    t.index ["year_tag_id", "big_tag_id"], name: "index_questions_on_year_tag_id_and_big_tag_id", using: :btree
  end

  create_table "small_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "big_tag_id"
    t.integer  "middle_tag_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["big_tag_id", "middle_tag_id"], name: "index_small_tags_on_big_tag_id_and_middle_tag_id", using: :btree
  end

  create_table "terminologies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "big_tag_id"
    t.integer  "middle_tag_id"
    t.integer  "small_tag_id"
    t.string   "word"
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["big_tag_id", "middle_tag_id"], name: "index_terminologies_on_big_tag_id_and_middle_tag_id", using: :btree
    t.index ["small_tag_id", "word"], name: "index_terminologies_on_small_tag_id_and_word", using: :btree
  end

  create_table "year_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year"], name: "index_year_tags_on_year", using: :btree
  end

end
