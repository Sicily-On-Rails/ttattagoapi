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

ActiveRecord::Schema[7.0].define(version: 2020_02_17_141701) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accategories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "accategories_activities", id: false, force: :cascade do |t|
    t.integer "accategory_id", null: false
    t.integer "activity_id", null: false
    t.index ["accategory_id", "activity_id"], name: "index_accategories_activities_on_accategory_id_and_activity_id"
    t.index ["activity_id", "accategory_id"], name: "index_accategories_activities_on_activity_id_and_accategory_id"
  end

  create_table "activities", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "street"
    t.string "street_number"
    t.string "city"
    t.string "province"
    t.string "zipcode"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.integer "place_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.text "short_description"
    t.string "slug"
    t.index ["place_id"], name: "index_activities_on_place_id"
    t.index ["slug"], name: "index_activities_on_slug", unique: true
  end

  create_table "addresses", id: :serial, force: :cascade do |t|
    t.string "street"
    t.string "streetnumber"
    t.string "zipcode"
    t.string "city"
    t.string "province"
    t.float "latitude"
    t.float "longitude"
    t.integer "addressable_id"
    t.string "addressable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "category_tels", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "category_tels_telephones", id: false, force: :cascade do |t|
    t.integer "telephone_id", null: false
    t.integer "category_tel_id", null: false
    t.index ["category_tel_id", "telephone_id"], name: "idx_category_tels_telephones_category_tel_id_telephone_id"
    t.index ["telephone_id", "category_tel_id"], name: "idx_category_tels_telephones_telephone_id_category_tel_id"
  end

  create_table "companies", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "contests", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "telephone"
    t.string "city"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "delayed_jobs", id: :serial, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at", precision: nil
    t.datetime "locked_at", precision: nil
    t.datetime "failed_at", precision: nil
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "doc_files", id: :serial, force: :cascade do |t|
    t.string "file"
    t.integer "document_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["document_id"], name: "index_doc_files_on_document_id"
  end

  create_table "doc_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "documents", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "doc_type_id"
    t.integer "created_by"
    t.index ["doc_type_id"], name: "index_documents_on_doc_type_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "emails", id: :serial, force: :cascade do |t|
    t.string "email"
    t.integer "emailable_id"
    t.string "emailable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at", precision: nil
    t.string "locale"
    t.index ["locale"], name: "index_friendly_id_slugs_on_locale"
    t.index ["slug", "sluggable_type", "locale"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_locale"
    t.index ["slug", "sluggable_type", "scope", "locale"], name: "index_friendly_id_slugs_uniqueness", unique: true
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "hours", id: :serial, force: :cascade do |t|
    t.integer "day"
    t.time "opening_time"
    t.time "closing_time"
    t.integer "company_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["company_id"], name: "index_hours_on_company_id"
  end

  create_table "photos", id: :serial, force: :cascade do |t|
    t.string "photo_file"
    t.integer "imageable_id"
    t.string "imageable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "places", id: :serial, force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "image"
    t.string "slug"
    t.float "latitude"
    t.float "longitude"
    t.string "copyright"
    t.index ["slug"], name: "index_places_on_slug", unique: true
  end

  create_table "places_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "place_id", null: false
    t.index ["place_id", "product_id"], name: "index_places_products_on_place_id_and_product_id"
    t.index ["product_id", "place_id"], name: "index_places_products_on_product_id_and_place_id"
  end

  create_table "pocategories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "pocategories_points", id: false, force: :cascade do |t|
    t.integer "pocategory_id", null: false
    t.integer "point_id", null: false
    t.index ["pocategory_id", "point_id"], name: "index_pocategories_points_on_pocategory_id_and_point_id"
    t.index ["point_id", "pocategory_id"], name: "index_pocategories_points_on_point_id_and_pocategory_id"
  end

  create_table "pocategory_translations", id: :serial, force: :cascade do |t|
    t.integer "pocategory_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.index ["locale"], name: "index_pocategory_translations_on_locale"
    t.index ["pocategory_id"], name: "index_pocategory_translations_on_pocategory_id"
  end

  create_table "point_translations", id: :serial, force: :cascade do |t|
    t.integer "point_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.text "description"
    t.string "short_description"
    t.string "slug"
    t.index ["locale"], name: "index_point_translations_on_locale"
    t.index ["point_id"], name: "index_point_translations_on_point_id"
  end

  create_table "points", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "place_id"
    t.string "street"
    t.string "street_number"
    t.string "zipcode"
    t.string "province"
    t.string "city"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "short_description"
    t.string "slug"
    t.string "copyright"
    t.index ["place_id"], name: "index_points_on_place_id"
    t.index ["slug"], name: "index_points_on_slug", unique: true
  end

  create_table "prcategories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "prcategories_products", id: false, force: :cascade do |t|
    t.integer "prcategory_id", null: false
    t.integer "product_id", null: false
    t.index ["prcategory_id", "product_id"], name: "index_prcategories_products_on_prcategory_id_and_product_id"
    t.index ["product_id", "prcategory_id"], name: "index_prcategories_products_on_product_id_and_prcategory_id"
  end

  create_table "products", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "short_description"
    t.string "slug"
    t.index ["slug"], name: "index_products_on_slug", unique: true
  end

  create_table "products_structures", id: false, force: :cascade do |t|
    t.integer "structure_id", null: false
    t.integer "product_id", null: false
    t.index ["product_id", "structure_id"], name: "index_products_structures_on_product_id_and_structure_id"
    t.index ["structure_id", "product_id"], name: "index_products_structures_on_structure_id_and_product_id"
  end

  create_table "social_networks", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.integer "social_id"
    t.string "social_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "structures", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "street"
    t.string "street_number"
    t.string "city"
    t.string "province"
    t.string "zipcode"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "telephones", id: :serial, force: :cascade do |t|
    t.string "number"
    t.integer "telephonable_id"
    t.string "telephonable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "admin", default: false
    t.string "name"
    t.string "surname"
    t.string "business_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "places"
  add_foreign_key "doc_files", "documents"
  add_foreign_key "documents", "doc_types"
  add_foreign_key "documents", "users"
  add_foreign_key "hours", "companies"
  add_foreign_key "points", "places"
end
