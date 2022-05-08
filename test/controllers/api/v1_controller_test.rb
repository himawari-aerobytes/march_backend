require "test_helper"

class Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get Branches" do
    get api_v1_Branches_url
    assert_response :success
  end
end
