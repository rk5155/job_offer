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

ActiveRecord::Schema.define(version: 20210705081724) do

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
  end

end
