require 'test_helper'

class GrupoPermissaosControllerTest < ActionController::TestCase
  setup do
    @grupo_permissao = grupo_permissaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_permissaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_permissao" do
    assert_difference('GrupoPermissao.count') do
      post :create, grupo_permissao: { grupo_id: @grupo_permissao.grupo_id, permissao_id: @grupo_permissao.permissao_id }
    end

    assert_redirected_to grupo_permissao_path(assigns(:grupo_permissao))
  end

  test "should show grupo_permissao" do
    get :show, id: @grupo_permissao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo_permissao
    assert_response :success
  end

  test "should update grupo_permissao" do
    patch :update, id: @grupo_permissao, grupo_permissao: { grupo_id: @grupo_permissao.grupo_id, permissao_id: @grupo_permissao.permissao_id }
    assert_redirected_to grupo_permissao_path(assigns(:grupo_permissao))
  end

  test "should destroy grupo_permissao" do
    assert_difference('GrupoPermissao.count', -1) do
      delete :destroy, id: @grupo_permissao
    end

    assert_redirected_to grupo_permissaos_path
  end
end
