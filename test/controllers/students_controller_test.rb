require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/students.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Student.count, data.length
  end

  test "create" do
    assert_difference "Student.count", 1 do
      post "/students.json", params: { first_name: "Michael", last_name: "Scott", email: "Michaelscott@dundermifflin.com", phone_number: "888-555-5556", short_bio: "I sell the best paper at the best paper company in the world", linkedin_url: "https://www.linkedin/in/michaelscott", twitter_handle: "https://www.twitter.com/michaelscott", personal_blog_website_url: "test.com", online_resume_url: "test.com", github_url: "https://github.com/michaelscott", photo: "test.jpg", password_digest: "[FILTERED]" }
      assert_response 200
    end
  end

  test "show" do
    get "/students/#{Student.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "first_name", "last_name", "email", "phone_number", "short_bio", "linkedin_url", "twitter_handle", "personal_blog_website_url", "online_resume_url", "github_url", "photo", "password_digest", "created_at", "updated_at"], data.keys
  end
end
