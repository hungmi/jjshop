require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get landingpage1" do
    get :landingpage1
    assert_response :success
  end

end
