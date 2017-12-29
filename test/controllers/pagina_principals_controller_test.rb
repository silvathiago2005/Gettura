require 'test_helper'

class PaginaPrincipalsControllerTest < ActionController::TestCase
  setup do
    @pagina_principal = pagina_principals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pagina_principals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pagina_principal" do
    assert_difference('PaginaPrincipal.count') do
      post :create, pagina_principal: { index: @pagina_principal.index }
    end

    assert_redirected_to pagina_principal_path(assigns(:pagina_principal))
  end

  test "should show pagina_principal" do
    get :show, id: @pagina_principal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pagina_principal
    assert_response :success
  end

  test "should update pagina_principal" do
    patch :update, id: @pagina_principal, pagina_principal: { index: @pagina_principal.index }
    assert_redirected_to pagina_principal_path(assigns(:pagina_principal))
  end

  test "should destroy pagina_principal" do
    assert_difference('PaginaPrincipal.count', -1) do
      delete :destroy, id: @pagina_principal
    end

    assert_redirected_to pagina_principals_path
  end
end
