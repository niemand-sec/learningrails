require 'test_helper'

class VersionServiciosControllerTest < ActionController::TestCase
  setup do
    @version_servicio = version_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:version_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create version_servicio" do
    assert_difference('VersionServicio.count') do
      post :create, version_servicio: { fechaFin: @version_servicio.fechaFin, fechaInicio: @version_servicio.fechaInicio, version: @version_servicio.version }
    end

    assert_redirected_to version_servicio_path(assigns(:version_servicio))
  end

  test "should show version_servicio" do
    get :show, id: @version_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @version_servicio
    assert_response :success
  end

  test "should update version_servicio" do
    patch :update, id: @version_servicio, version_servicio: { fechaFin: @version_servicio.fechaFin, fechaInicio: @version_servicio.fechaInicio, version: @version_servicio.version }
    assert_redirected_to version_servicio_path(assigns(:version_servicio))
  end

  test "should destroy version_servicio" do
    assert_difference('VersionServicio.count', -1) do
      delete :destroy, id: @version_servicio
    end

    assert_redirected_to version_servicios_path
  end
end
