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

  test "update" do
    skill = Skill.first
    patch "/skills/#{skill.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Skill.count", -1 do
      delete "/skills/#{Skill.first.id}.json"
      assert_response 200
    end
  end
end
