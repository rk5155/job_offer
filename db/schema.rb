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

ActiveRecord::Schema.define(version: 20210813062610) do

  create_table "applies", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "email"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id", "created_at"], name: "index_applies_on_company_id_and_created_at"
    t.index ["company_id"], name: "index_applies_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "jobs", force: :cascade do |t|
    t.string "office_name"
    t.string "title"
    t.string "section"
    t.string "status"
    t.text "content"
    t.text "rewarding"
    t.text "target"
    t.string "image"
    t.string "location1"
    t.string "location2"
    t.string "location3"
    t.string "location4"
    t.string "location5"
    t.string "location6"
    t.string "location7"
    t.text "transportation"
    t.string "salary"
    t.integer "under"
    t.integer "up"
    t.text "supplement"
    t.text "conditions"
    t.string "application"
    t.integer "number"
    t.text "selection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string "spouse"
    t.string "dependent_support"
    t.integer "dependents"
    t.string "employment_status"
    t.integer "annual_Income"
    t.integer "experience"
    t.string "Experienced"
    t.string "occupation"
    t.integer "years_of_experience"
    t.string "company_name1"
    t.integer "period_year_from1"
    t.integer "period_month_from1"
    t.integer "period_year_to1"
    t.integer "period_month_to1"
    t.boolean "status1"
    t.string "employment_status1"
    t.string "industry1"
    t.integer "capital1"
    t.integer "number_of_employees1"
    t.string "final_position1"
    t.text "job_description1"
    t.text "reason_retirement1"
    t.string "company_name2"
    t.integer "period_year_from2"
    t.integer "period_month_from2"
    t.integer "period_year_to2"
    t.integer "period_month_to2"
    t.boolean "status2"
    t.string "employment_status2"
    t.string "industry2"
    t.integer "capital2"
    t.integer "number_of_employees2"
    t.string "final_position2"
    t.text "job_description2"
    t.text "reason_retirement2"
    t.string "company_name3"
    t.integer "period_year_from3"
    t.integer "period_month_from3"
    t.integer "period_year_to3"
    t.integer "period_month_to3"
    t.boolean "status3"
    t.string "employment_status3"
    t.string "industry3"
    t.integer "capital3"
    t.integer "number_of_employees3"
    t.string "final_position3"
    t.text "job_description3"
    t.text "reason_retirement3"
    t.string "qualification1"
    t.integer "qualification_year1"
    t.integer "qualification_month1"
    t.string "qualification2"
    t.integer "qualification_year2"
    t.integer "qualification_month2"
    t.string "qualification3"
    t.integer "qualification_year3"
    t.integer "qualification_month3"
    t.string "qualification4"
    t.integer "qualification_year4"
    t.integer "qualification_month4"
    t.string "qualification5"
    t.integer "qualification_year5"
    t.integer "qualification_month5"
    t.string "language"
    t.text "pr"
    t.text "motivation"
    t.text "hope"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrapings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.text "time"
    t.text "location"
    t.text "salary"
    t.text "bonus"
    t.text "allowance"
    t.text "holiday"
    t.text "welfare"
    t.text "other"
    t.string "url"
    t.string "title"
    t.string "section"
    t.text "rewarding"
    t.text "target"
    t.string "image"
    t.string "location1"
    t.string "location2"
    t.string "location3"
    t.string "location4"
    t.string "location5"
    t.text "transportation"
    t.string "under"
    t.string "up"
    t.text "supplement"
    t.text "conditions"
    t.string "application"
    t.integer "number"
    t.text "selection"
    t.text "content"
    t.integer "company_id"
  end

  create_table "user_devises", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "furigane"
    t.string "birthday"
    t.string "sex"
    t.string "profession"
    t.text "career"
    t.integer "number"
    t.string "address"
    t.text "pr"
    t.index ["email"], name: "index_user_devises_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_devises_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name2"
    t.string "furigana"
    t.string "furigana2"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.string "sex"
    t.integer "postal_code"
    t.string "prefectures"
    t.string "municipality"
    t.string "address"
    t.string "phone_number"
    t.string "image"
    t.string "password_digest"
  end

end
