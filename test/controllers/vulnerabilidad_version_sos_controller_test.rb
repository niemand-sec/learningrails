require 'test_helper'

class VulnerabilidadVersionSosControllerTest < ActionController::TestCase
  setup do
    @vulnerabilidad_version_so = vulnerabilidad_version_sos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vulnerabilidad_version_sos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vulnerabilidad_version_so" do
    assert_difference('VulnerabilidadVersionSo.count') do
      post :create, vulnerabilidad_version_so: {  }
    end

    assert_redirected_to vulnerabilidad_version_so_path(assigns(:vulnerabilidad_version_so))
  end

  test "should show vulnerabilidad_version_so" do
    get :show, id: @vulnerabilidad_version_so
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vulnerabilidad_version_so
    assert_response :success
  end

  test "should update vulnerabilidad_version_so" do
    patch :update, id: @vulnerabilidad_version_so, vulnerabilidad_version_so: {  }
    assert_redirected_to vulnerabilidad_version_so_path(assigns(:vulnerabilidad_version_so))
  end

  test "should destroy vulnerabilidad_version_so" do
    assert_difference('VulnerabilidadVersionSo.count', -1) do
      delete :destroy, id: @vulnerabilidad_version_so
    end

    assert_redirected_to vulnerabilidad_version_sos_path
  end
end
