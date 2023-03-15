require "test_helper"

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/experiences.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Experience.count, data.length
  end
end
