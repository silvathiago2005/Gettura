require 'test_helper'

class TamiresControllerTest < ActionController::TestCase
  setup do
    @tamire = tamires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tamires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tamire" do
    assert_difference('Tamire.count') do
      post :create, tamire: {  }
    end

    assert_redirected_to tamire_path(assigns(:tamire))
  end

  test "should show tamire" do
    get :show, id: @tamire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tamire
    assert_response :success
  end

  test "should update tamire" do
    patch :update, id: @tamire, tamire: {  }
    assert_redirected_to tamire_path(assigns(:tamire))
  end

  test "should destroy tamire" do
    assert_difference('Tamire.count', -1) do
      delete :destroy, id: @tamire
    end

    assert_redirected_to tamires_path
  end
end
