require 'test_helper'

class PermissaosControllerTest < ActionController::TestCase
  setup do
    @permissao = permissaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permissaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permissao" do
    assert_difference('Permissao.count') do
      post :create, permissao: { descricao: @permissao.descricao, nome: @permissao.nome }
    end

    assert_redirected_to permissao_path(assigns(:permissao))
  end

  test "should show permissao" do
    get :show, id: @permissao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permissao
    assert_response :success
  end

  test "should update permissao" do
    patch :update, id: @permissao, permissao: { descricao: @permissao.descricao, nome: @permissao.nome }
    assert_redirected_to permissao_path(assigns(:permissao))
  end

  test "should destroy permissao" do
    assert_difference('Permissao.count', -1) do
      delete :destroy, id: @permissao
    end

    assert_redirected_to permissaos_path
  end
end
