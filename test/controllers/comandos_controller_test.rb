require 'test_helper'

class ComandosControllerTest < ActionController::TestCase
  setup do
    @comando = comandos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comandos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comando" do
    assert_difference('Comando.count') do
      post :create, comando: { descripcion: @comando.descripcion, instrucion: @comando.instrucion }
    end

    assert_redirected_to comando_path(assigns(:comando))
  end

  test "should show comando" do
    get :show, id: @comando
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comando
    assert_response :success
  end

  test "should update comando" do
    patch :update, id: @comando, comando: { descripcion: @comando.descripcion, instrucion: @comando.instrucion }
    assert_redirected_to comando_path(assigns(:comando))
  end

  test "should destroy comando" do
    assert_difference('Comando.count', -1) do
      delete :destroy, id: @comando
    end

    assert_redirected_to comandos_path
  end
end
