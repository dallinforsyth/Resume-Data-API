require "test_helper"

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/capstones.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capstone.count, data.length
  end

  test "create" do
    assert_difference "Capstone.count", 1 do
      post "/capstones.json", params: { name: "Bill & Teds phonebooth", description: "allows user to transed time & visit other timelines", url: "https://cubicallbooth.com/wp-content/uploads/2020/01/Cubicall_Bill_Ted_PhoneBooth_a-closed.jpg", screenshot: "https://s3.crackedcdn.com/phpimages/article/3/2/4/739324.jpg?v=2" }
      assert_response 200
    end
  end

  test "show" do
    get "/capstones/#{Capstone.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "url", "screenshot", "created_at", "updated_at"], data.keys
  end

  test "update" do
    capstone = Capstone.first
    patch "/capstones/#{capstone.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal capstone.description, data["description"]
    assert_equal capstone.url, data["url"]
    assert_equal capstone.screenshot, data["screenshot"]
  end

  test "destroy" do
    assert_difference "Capstone.count", -1 do
      delete "/capstones/#{Capstone.first.id}.json"
      assert_response 200
    end
  end
end
