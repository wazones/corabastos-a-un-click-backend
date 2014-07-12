require 'test_helper'

class WarehousesControllerTest < ActionController::TestCase
  setup do
    @warehouse = warehouses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warehouses)
  end

  test "should create warehouse" do
    assert_difference('Warehouse.count') do
      post :create, warehouse: { name: @warehouse.name, type_warehouse: @warehouse.type_warehouse, x: @warehouse.x, y: @warehouse.y }
    end

    assert_response 201
  end

  test "should show warehouse" do
    get :show, id: @warehouse
    assert_response :success
  end

  test "should update warehouse" do
    put :update, id: @warehouse, warehouse: { name: @warehouse.name, type_warehouse: @warehouse.type_warehouse, x: @warehouse.x, y: @warehouse.y }
    assert_response 204
  end

  test "should destroy warehouse" do
    assert_difference('Warehouse.count', -1) do
      delete :destroy, id: @warehouse
    end

    assert_response 204
  end
end
