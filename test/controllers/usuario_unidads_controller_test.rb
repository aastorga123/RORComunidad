require 'test_helper'

class UsuarioUnidadsControllerTest < ActionController::TestCase
  setup do
    @usuario_unidad = usuario_unidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_unidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_unidad" do
    assert_difference('UsuarioUnidad.count') do
      post :create, usuario_unidad: { unidad_id: @usuario_unidad.unidad_id, usuario_id: @usuario_unidad.usuario_id }
    end

    assert_redirected_to usuario_unidad_path(assigns(:usuario_unidad))
  end

  test "should show usuario_unidad" do
    get :show, id: @usuario_unidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_unidad
    assert_response :success
  end

  test "should update usuario_unidad" do
    patch :update, id: @usuario_unidad, usuario_unidad: { unidad_id: @usuario_unidad.unidad_id, usuario_id: @usuario_unidad.usuario_id }
    assert_redirected_to usuario_unidad_path(assigns(:usuario_unidad))
  end

  test "should destroy usuario_unidad" do
    assert_difference('UsuarioUnidad.count', -1) do
      delete :destroy, id: @usuario_unidad
    end

    assert_redirected_to usuario_unidads_path
  end
end
