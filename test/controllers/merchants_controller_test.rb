require 'test_helper'

class MerchantsControllerTest < ActionController::TestCase
  setup do
    @merchant = merchants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merchants)
  end

  test "should create merchant" do
    assert_difference('Merchant.count') do
      post :create, merchant: { name: @merchant.name, pass: @merchant.pass, phone: @merchant.phone, profilePicture: @merchant.profilePicture, rating: @merchant.rating, user: @merchant.user }
    end

    assert_response 201
  end

  test "should show merchant" do
    get :show, id: @merchant
    assert_response :success
  end

  test "should update merchant" do
    put :update, id: @merchant, merchant: { name: @merchant.name, pass: @merchant.pass, phone: @merchant.phone, profilePicture: @merchant.profilePicture, rating: @merchant.rating, user: @merchant.user }
    assert_response 204
  end

  test "should destroy merchant" do
    assert_difference('Merchant.count', -1) do
      delete :destroy, id: @merchant
    end

    assert_response 204
  end
end
