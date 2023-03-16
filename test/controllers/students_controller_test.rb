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
    assert_equal ["id", "first_name", "last_name", "email", "phone_number", "short_bio", "linkedin_url", "twitter_handle", "personal_blog_website_url", "online_resume_url", "github_url", "photo", "created_at", "updated_at"], data.keys
  end

  test "update" do
    student = Student.first
    patch "/students/#{student.id}.json", params: { first_name: "updated first_name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "updated first_name", data["first_name"]
    assert_equal student.last_name, data["last_name"]
    assert_equal student.email, data["email"]
    assert_equal student.phone_number, data["phone_number"]
    assert_equal student.short_bio, data["short_bio"]
    assert_equal student.linkedin_url, data["linkedin_url"]
    assert_equal student.twitter_handle, data["twitter_handle"]
    assert_equal student.personal_blog_website_url, data["personal_blog_website_url"]
    assert_equal student.online_resume_url, data["online_resume_url"]
    assert_equal student.github_url, data["github_url"]
    assert_equal student.photo, data["photo"]
  end

  test "destroy" do
    assert_difference "Student.count", -1 do
      delete "/students/#{Student.first.id}.json"
      assert_response 200
    end
  end
end
