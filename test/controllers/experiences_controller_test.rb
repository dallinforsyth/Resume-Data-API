require "test_helper"

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/experiences.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Experience.count, data.length
  end

  test "create" do
    assert_difference "Experience.count", 1 do
      post "/experiences.json", params: { start_date: "03/23/22", end_date: "09/23/23", job_title: "bartender", company_name: "Big Restaurant", details: "made delicious elixirs for customers to quench their thirst after a long day" }
      assert_response 200
    end
  end

  test "show" do
    get "/experiences/#{Experience.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "start_date", "end_date", "job_title", "company_name", "details", "created_at", "updated_at"], data.keys
  end

  test "update" do
    experience = Experience.first
    patch "/experiences/#{experience.id}.json", params: { job_title: "Updated job_title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated job_title", data["job_title"]
    assert_equal experience.start_date, data["start_date"]
    assert_equal experience.end_date, data["end_date"]
    assert_equal experience.company_name, data["company_name"]
    assert_equal experience.details, data["details"]
  end
end
