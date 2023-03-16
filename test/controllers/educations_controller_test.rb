require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/educations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Education.count, data.length
  end

  test "create" do
    assert_difference "Education.count", 1 do
      post "/educations.json", params: { start_date: "03/05/10", end_date: "04/02/46", degree: "Masters", university_name: "Michagan State", details: "Dont forget to bring your pizza's" }
      assert_response 200
    end
  end

  test "show" do
    get "/educations/#{Education.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "start_date", "end_date", "degree", "university_name", "details", "created_at", "updated_at"], data.keys
  end

  test "update" do
    education = Education.first
    patch "/educations/#{education.id}.json", params: { degree: "Updated degree" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated degree", data["degree"]
    assert_equal education.start_date, data["start_date"]
    assert_equal education.end_date, data["end_date"]
    assert_equal education.university_name, data["university_name"]
    assert_equal education.details, data["details"]
  end

  test "destroy" do
    assert_difference "Education.count", -1 do
      delete "/educations/#{Education.first.id}.json"
      assert_response 200
    end
  end
end
