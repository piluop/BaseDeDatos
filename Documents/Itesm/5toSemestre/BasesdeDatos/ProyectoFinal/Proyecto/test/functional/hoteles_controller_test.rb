require 'test_helper'

class HotelesControllerTest < ActionController::TestCase
  setup do
    @hotele = hoteles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hoteles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotele" do
    assert_difference('Hotele.count') do
      post :create, hotele: { categoria: @hotele.categoria, fechaen: @hotele.fechaen, fechasa: @hotele.fechasa, nombre: @hotele.nombre, ubicacion: @hotele.ubicacion }
    end

    assert_redirected_to hotele_path(assigns(:hotele))
  end

  test "should show hotele" do
    get :show, id: @hotele
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotele
    assert_response :success
  end

  test "should update hotele" do
    put :update, id: @hotele, hotele: { categoria: @hotele.categoria, fechaen: @hotele.fechaen, fechasa: @hotele.fechasa, nombre: @hotele.nombre, ubicacion: @hotele.ubicacion }
    assert_redirected_to hotele_path(assigns(:hotele))
  end

  test "should destroy hotele" do
    assert_difference('Hotele.count', -1) do
      delete :destroy, id: @hotele
    end

    assert_redirected_to hoteles_path
  end
end
