require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/skills.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Skill.count, data.length
  end

  test "create" do
    assert_difference "Skill.count", 1 do
      post "/skills.json", params: { name: "lake" }
      assert_response 200
    end
  end

  test "show" do
    get "/skills/#{Skill.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "created_at", "updated_at"], data.keys
  end
end
