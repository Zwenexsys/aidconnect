require 'test_helper'

class AidRequestsControllerTest < ActionController::TestCase
  setup do
    @aid_request = aid_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aid_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aid_request" do
    assert_difference('AidRequest.count') do
      post :create, aid_request: { content: @aid_request.content, location_id: @aid_request.location_id, name: @aid_request.name, nric: @aid_request.nric, phone: @aid_request.phone }
    end

    assert_redirected_to aid_request_path(assigns(:aid_request))
  end

  test "should show aid_request" do
    get :show, id: @aid_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aid_request
    assert_response :success
  end

  test "should update aid_request" do
    patch :update, id: @aid_request, aid_request: { content: @aid_request.content, location_id: @aid_request.location_id, name: @aid_request.name, nric: @aid_request.nric, phone: @aid_request.phone }
    assert_redirected_to aid_request_path(assigns(:aid_request))
  end

  test "should destroy aid_request" do
    assert_difference('AidRequest.count', -1) do
      delete :destroy, id: @aid_request
    end

    assert_redirected_to aid_requests_path
  end
end
