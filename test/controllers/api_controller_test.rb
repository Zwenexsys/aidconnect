require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get offers" do
    get :offers
    assert_response :success
  end

  test "should get requests" do
    get :requests
    assert_response :success
  end

end
