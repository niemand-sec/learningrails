require 'test_helper'

class PuertoServiciosControllerTest < ActionController::TestCase
  setup do
    @puerto_servicio = puerto_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puerto_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puerto_servicio" do
    assert_difference('PuertoServicio.count') do
      post :create, puerto_servicio: {  }
    end

    assert_redirected_to puerto_servicio_path(assigns(:puerto_servicio))
  end

  test "should show puerto_servicio" do
    get :show, id: @puerto_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puerto_servicio
    assert_response :success
  end

  test "should update puerto_servicio" do
    patch :update, id: @puerto_servicio, puerto_servicio: {  }
    assert_redirected_to puerto_servicio_path(assigns(:puerto_servicio))
  end

  test "should destroy puerto_servicio" do
    assert_difference('PuertoServicio.count', -1) do
      delete :destroy, id: @puerto_servicio
    end

    assert_redirected_to puerto_servicios_path
  end
end
