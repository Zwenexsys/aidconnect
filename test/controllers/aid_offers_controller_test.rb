require 'test_helper'

class AidOffersControllerTest < ActionController::TestCase
  setup do
    @aid_offer = aid_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aid_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aid_offer" do
    assert_difference('AidOffer.count') do
      post :create, aid_offer: { content: @aid_offer.content, location_id: @aid_offer.location_id, name: @aid_offer.name, nric: @aid_offer.nric, phone: @aid_offer.phone }
    end

    assert_redirected_to aid_offer_path(assigns(:aid_offer))
  end

  test "should show aid_offer" do
    get :show, id: @aid_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aid_offer
    assert_response :success
  end

  test "should update aid_offer" do
    patch :update, id: @aid_offer, aid_offer: { content: @aid_offer.content, location_id: @aid_offer.location_id, name: @aid_offer.name, nric: @aid_offer.nric, phone: @aid_offer.phone }
    assert_redirected_to aid_offer_path(assigns(:aid_offer))
  end

  test "should destroy aid_offer" do
    assert_difference('AidOffer.count', -1) do
      delete :destroy, id: @aid_offer
    end

    assert_redirected_to aid_offers_path
  end
end
