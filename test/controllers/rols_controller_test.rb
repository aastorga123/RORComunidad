require 'test_helper'

class RolsControllerTest < ActionController::TestCase
  setup do
    @rol = rols(:one)
  end

  test "obtener_datos_rol" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "crear_rol" do
    rol = Rol.new({ descripcionrol: 'descripcion_test', nombrerol: 'rol_test' })
    assert rol.save
  end

  test "should show rol" do
    get :show, id: @rol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rol
    assert_response :success
  end

  test "should update rol" do
    patch :update, id: @rol, rol: { descripcionrol: @rol.descripcionrol, nombrerol: @rol.nombrerol }
    assert_redirected_to rol_path(assigns(:rol))
  end

  test "should destroy rol" do
    assert_difference('Rol.count', -1) do
      delete :destroy, id: @rol
    end

    assert_redirected_to rols_path
  end
end
