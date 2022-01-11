require "test_helper"

class ExperienceControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get experience_new_url
    assert_response :success
  end
end
