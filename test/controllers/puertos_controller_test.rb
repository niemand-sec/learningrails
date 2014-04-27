require 'test_helper'

class PuertosControllerTest < ActionController::TestCase
  setup do
    @puerto = puertos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puertos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puerto" do
    assert_difference('Puerto.count') do
      post :create, puerto: { descripcion: @puerto.descripcion, numero: @puerto.numero }
    end

    assert_redirected_to puerto_path(assigns(:puerto))
  end

  test "should show puerto" do
    get :show, id: @puerto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puerto
    assert_response :success
  end

  test "should update puerto" do
    patch :update, id: @puerto, puerto: { descripcion: @puerto.descripcion, numero: @puerto.numero }
    assert_redirected_to puerto_path(assigns(:puerto))
  end

  test "should destroy puerto" do
    assert_difference('Puerto.count', -1) do
      delete :destroy, id: @puerto
    end

    assert_redirected_to puertos_path
  end
end
