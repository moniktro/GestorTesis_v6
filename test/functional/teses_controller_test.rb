require 'test_helper'

class TesesControllerTest < ActionController::TestCase
  setup do
    @tese = teses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tese" do
    assert_difference('Tese.count') do
      post :create, tese: { areaInvestigacion: @tese.areaInvestigacion, descripcionTesis: @tese.descripcionTesis, fechaFin: @tese.fechaFin, fechaInicio: @tese.fechaInicio, finalizado: @tese.finalizado, nombreTesis: @tese.nombreTesis, profesor_id: @tese.profesor_id }
    end

    assert_redirected_to tese_path(assigns(:tese))
  end

  test "should show tese" do
    get :show, id: @tese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tese
    assert_response :success
  end

  test "should update tese" do
    put :update, id: @tese, tese: { areaInvestigacion: @tese.areaInvestigacion, descripcionTesis: @tese.descripcionTesis, fechaFin: @tese.fechaFin, fechaInicio: @tese.fechaInicio, finalizado: @tese.finalizado, nombreTesis: @tese.nombreTesis, profesor_id: @tese.profesor_id }
    assert_redirected_to tese_path(assigns(:tese))
  end

  test "should destroy tese" do
    assert_difference('Tese.count', -1) do
      delete :destroy, id: @tese
    end

    assert_redirected_to teses_path
  end
end
