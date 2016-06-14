require 'test_helper'

class TipoCuentaControllerTest < ActionController::TestCase
  setup do
    @tipo_cuentum = tipo_cuenta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_cuenta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_cuentum" do
    assert_difference('TipoCuentum.count') do
      post :create, tipo_cuentum: { tipo: @tipo_cuentum.tipo }
    end

    assert_redirected_to tipo_cuentum_path(assigns(:tipo_cuentum))
  end

  test "should show tipo_cuentum" do
    get :show, id: @tipo_cuentum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_cuentum
    assert_response :success
  end

  test "should update tipo_cuentum" do
    patch :update, id: @tipo_cuentum, tipo_cuentum: { tipo: @tipo_cuentum.tipo }
    assert_redirected_to tipo_cuentum_path(assigns(:tipo_cuentum))
  end

  test "should destroy tipo_cuentum" do
    assert_difference('TipoCuentum.count', -1) do
      delete :destroy, id: @tipo_cuentum
    end

    assert_redirected_to tipo_cuenta_path
  end
end
