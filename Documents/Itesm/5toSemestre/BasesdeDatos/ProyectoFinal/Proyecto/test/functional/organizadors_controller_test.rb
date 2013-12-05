require 'test_helper'

class OrganizadorsControllerTest < ActionController::TestCase
  setup do
    @organizador = organizadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizador" do
    assert_difference('Organizador.count') do
      post :create, organizador: { edad: @organizador.edad, nombre: @organizador.nombre, nomina: @organizador.nomina }
    end

    assert_redirected_to organizador_path(assigns(:organizador))
  end

  test "should show organizador" do
    get :show, id: @organizador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizador
    assert_response :success
  end

  test "should update organizador" do
    put :update, id: @organizador, organizador: { edad: @organizador.edad, nombre: @organizador.nombre, nomina: @organizador.nomina }
    assert_redirected_to organizador_path(assigns(:organizador))
  end

  test "should destroy organizador" do
    assert_difference('Organizador.count', -1) do
      delete :destroy, id: @organizador
    end

    assert_redirected_to organizadors_path
  end
end
