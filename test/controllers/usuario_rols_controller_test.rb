require 'test_helper'

class UsuarioRolsControllerTest < ActionController::TestCase
  setup do
    @usuario_rol = usuario_rols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_rols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_rol" do
    assert_difference('UsuarioRol.count') do
      post :create, usuario_rol: { rol_id: @usuario_rol.rol_id, usuario_id: @usuario_rol.usuario_id }
    end

    assert_redirected_to usuario_rol_path(assigns(:usuario_rol))
  end

  test "should show usuario_rol" do
    get :show, id: @usuario_rol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_rol
    assert_response :success
  end

  test "should update usuario_rol" do
    patch :update, id: @usuario_rol, usuario_rol: { rol_id: @usuario_rol.rol_id, usuario_id: @usuario_rol.usuario_id }
    assert_redirected_to usuario_rol_path(assigns(:usuario_rol))
  end

  test "should destroy usuario_rol" do
    assert_difference('UsuarioRol.count', -1) do
      delete :destroy, id: @usuario_rol
    end

    assert_redirected_to usuario_rols_path
  end
end
