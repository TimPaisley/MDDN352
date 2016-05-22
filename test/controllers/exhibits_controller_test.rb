require 'test_helper'

class ExhibitsControllerTest < ActionController::TestCase
  test "should get levels" do
    get :levels
    assert_response :success
  end

  test "should get exhibit" do
    get :exhibit
    assert_response :success
  end

end
