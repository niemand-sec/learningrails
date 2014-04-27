require 'test_helper'

class ServicioVersionSosControllerTest < ActionController::TestCase
  setup do
    @servicio_version_so = servicio_version_sos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicio_version_sos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio_version_so" do
    assert_difference('ServicioVersionSo.count') do
      post :create, servicio_version_so: {  }
    end

    assert_redirected_to servicio_version_so_path(assigns(:servicio_version_so))
  end

  test "should show servicio_version_so" do
    get :show, id: @servicio_version_so
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio_version_so
    assert_response :success
  end

  test "should update servicio_version_so" do
    patch :update, id: @servicio_version_so, servicio_version_so: {  }
    assert_redirected_to servicio_version_so_path(assigns(:servicio_version_so))
  end

  test "should destroy servicio_version_so" do
    assert_difference('ServicioVersionSo.count', -1) do
      delete :destroy, id: @servicio_version_so
    end

    assert_redirected_to servicio_version_sos_path
  end
end
