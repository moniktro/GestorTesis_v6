require 'test_helper'

class CompromisosControllerTest < ActionController::TestCase
  setup do
    @compromiso = compromisos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compromisos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compromiso" do
    assert_difference('Compromiso.count') do
      post :create, compromiso: { asunto: @compromiso.asunto, descripcionCompromiso: @compromiso.descripcionCompromiso, estudiantes_id: @compromiso.estudiantes_id, fechaLimite: @compromiso.fechaLimite, finalizado: @compromiso.finalizado, profesors_id: @compromiso.profesors_id, teses_id: @compromiso.teses_id }
    end

    assert_redirected_to compromiso_path(assigns(:compromiso))
  end

  test "should show compromiso" do
    get :show, id: @compromiso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compromiso
    assert_response :success
  end

  test "should update compromiso" do
    put :update, id: @compromiso, compromiso: { asunto: @compromiso.asunto, descripcionCompromiso: @compromiso.descripcionCompromiso, estudiantes_id: @compromiso.estudiantes_id, fechaLimite: @compromiso.fechaLimite, finalizado: @compromiso.finalizado, profesors_id: @compromiso.profesors_id, teses_id: @compromiso.teses_id }
    assert_redirected_to compromiso_path(assigns(:compromiso))
  end

  test "should destroy compromiso" do
    assert_difference('Compromiso.count', -1) do
      delete :destroy, id: @compromiso
    end

    assert_redirected_to compromisos_path
  end
end
