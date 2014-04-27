require 'test_helper'

class VersionSosControllerTest < ActionController::TestCase
  setup do
    @version_so = version_sos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:version_sos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create version_so" do
    assert_difference('VersionSo.count') do
      post :create, version_so: { descripcion: @version_so.descripcion, nombre: @version_so.nombre }
    end

    assert_redirected_to version_so_path(assigns(:version_so))
  end

  test "should show version_so" do
    get :show, id: @version_so
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @version_so
    assert_response :success
  end

  test "should update version_so" do
    patch :update, id: @version_so, version_so: { descripcion: @version_so.descripcion, nombre: @version_so.nombre }
    assert_redirected_to version_so_path(assigns(:version_so))
  end

  test "should destroy version_so" do
    assert_difference('VersionSo.count', -1) do
      delete :destroy, id: @version_so
    end

    assert_redirected_to version_sos_path
  end
end
