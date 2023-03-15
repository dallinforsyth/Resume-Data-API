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
end
