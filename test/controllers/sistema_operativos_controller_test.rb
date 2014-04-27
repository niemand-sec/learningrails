require 'test_helper'

class SistemaOperativosControllerTest < ActionController::TestCase
  setup do
    @sistema_operativo = sistema_operativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sistema_operativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sistema_operativo" do
    assert_difference('SistemaOperativo.count') do
      post :create, sistema_operativo: { descripcion: @sistema_operativo.descripcion, nombre: @sistema_operativo.nombre }
    end

    assert_redirected_to sistema_operativo_path(assigns(:sistema_operativo))
  end

  test "should show sistema_operativo" do
    get :show, id: @sistema_operativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sistema_operativo
    assert_response :success
  end

  test "should update sistema_operativo" do
    patch :update, id: @sistema_operativo, sistema_operativo: { descripcion: @sistema_operativo.descripcion, nombre: @sistema_operativo.nombre }
    assert_redirected_to sistema_operativo_path(assigns(:sistema_operativo))
  end

  test "should destroy sistema_operativo" do
    assert_difference('SistemaOperativo.count', -1) do
      delete :destroy, id: @sistema_operativo
    end

    assert_redirected_to sistema_operativos_path
  end
end
