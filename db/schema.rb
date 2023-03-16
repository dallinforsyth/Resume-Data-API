
ActiveRecord::Schema[7.0].define(version: 2023_03_15_204341) do

  create_table "educations", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university_name"

ActiveRecord::Schema[7.0].define(version: 2023_03_15_175209) do

  create_table "experiences", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"

    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
