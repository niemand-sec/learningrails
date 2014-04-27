require 'test_helper'

class VulnerabilidadsControllerTest < ActionController::TestCase
  setup do
    @vulnerabilidad = vulnerabilidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vulnerabilidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vulnerabilidad" do
    assert_difference('Vulnerabilidad.count') do
      post :create, vulnerabilidad: { descripcion: @vulnerabilidad.descripcion, fechaDescubrimiento: @vulnerabilidad.fechaDescubrimiento, nombre: @vulnerabilidad.nombre }
    end

    assert_redirected_to vulnerabilidad_path(assigns(:vulnerabilidad))
  end

  test "should show vulnerabilidad" do
    get :show, id: @vulnerabilidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vulnerabilidad
    assert_response :success
  end

  test "should update vulnerabilidad" do
    patch :update, id: @vulnerabilidad, vulnerabilidad: { descripcion: @vulnerabilidad.descripcion, fechaDescubrimiento: @vulnerabilidad.fechaDescubrimiento, nombre: @vulnerabilidad.nombre }
    assert_redirected_to vulnerabilidad_path(assigns(:vulnerabilidad))
  end

  test "should destroy vulnerabilidad" do
    assert_difference('Vulnerabilidad.count', -1) do
      delete :destroy, id: @vulnerabilidad
    end

    assert_redirected_to vulnerabilidads_path
  end
end
