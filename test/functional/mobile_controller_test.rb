require 'test_helper'

class MobileControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get put" do
    get :put
    assert_response :success
  end

end
