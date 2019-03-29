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

ActiveRecord::Schema.define(version: 2019_03_29_061212) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "website"
    t.string "contact_one"
    t.string "contact_two"
    t.string "fax"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "facebook_url"
    t.string "linkedin_url"
    t.string "twitter_url"
    t.string "google_plus_url"
    t.string "youtube_url"
    t.string "company_size"
    t.string "cover_image"
    t.string "logo_image"
    t.float "latitude"
    t.float "longitude"
    t.date "year_of_establishment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "industry_id"
    t.integer "company_domains_count"
    t.integer "job_posts_count"
    t.integer "contacts_count"
    t.integer "user_id"
    t.index ["industry_id"], name: "index_companies_on_industry_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "company_domains", force: :cascade do |t|
    t.integer "company_id"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_domains_on_company_id"
    t.index ["domain_id"], name: "index_company_domains_on_domain_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact_number"
    t.string "message"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_contacts_on_company_id"
  end

  create_table "domains", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_domains_count"
  end

  create_table "images", force: :cascade do |t|
    t.string "image"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_post_keywords", force: :cascade do |t|
    t.integer "keyword_id"
    t.integer "job_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_post_id"], name: "index_job_post_keywords_on_job_post_id"
    t.index ["keyword_id"], name: "index_job_post_keywords_on_keyword_id"
  end

  create_table "job_posts", force: :cascade do |t|
    t.string "job_title"
    t.text "job_description"
    t.string "eligibility_criteria"
    t.string "required_experience"
    t.boolean "fresher_allowed"
    t.string "status"
    t.date "published_at"
    t.string "cover_image"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "job_type"
    t.integer "job_post_keywords_count"
    t.index ["company_id"], name: "index_job_posts_on_company_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "info_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "job_post_keywords_count"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "contact"
    t.string "nationality"
    t.string "city"
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
