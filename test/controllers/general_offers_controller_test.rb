require 'test_helper'

class GeneralOffersControllerTest < ActionController::TestCase
  setup do
    @general_offer = general_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_offer" do
    assert_difference('GeneralOffer.count') do
      post :create, general_offer: { content: @general_offer.content, name: @general_offer.name, nric: @general_offer.nric, phone: @general_offer.phone }
    end

    assert_redirected_to general_offer_path(assigns(:general_offer))
  end

  test "should show general_offer" do
    get :show, id: @general_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_offer
    assert_response :success
  end

  test "should update general_offer" do
    patch :update, id: @general_offer, general_offer: { content: @general_offer.content, name: @general_offer.name, nric: @general_offer.nric, phone: @general_offer.phone }
    assert_redirected_to general_offer_path(assigns(:general_offer))
  end

  test "should destroy general_offer" do
    assert_difference('GeneralOffer.count', -1) do
      delete :destroy, id: @general_offer
    end

    assert_redirected_to general_offers_path
  end
end
