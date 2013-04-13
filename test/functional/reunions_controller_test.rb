require 'test_helper'

class ReunionsControllerTest < ActionController::TestCase
  setup do
    @reunion = reunions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reunions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reunion" do
    assert_difference('Reunion.count') do
      post :create, reunion: { asunto_reu: @reunion.asunto_reu, duracion_reu: @reunion.duracion_reu, estudiantes_id: @reunion.estudiantes_id, fecha_reu: @reunion.fecha_reu, lugar: @reunion.lugar, profesors_id: @reunion.profesors_id, teses_id: @reunion.teses_id }
    end

    assert_redirected_to reunion_path(assigns(:reunion))
  end

  test "should show reunion" do
    get :show, id: @reunion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reunion
    assert_response :success
  end

  test "should update reunion" do
    put :update, id: @reunion, reunion: { asunto_reu: @reunion.asunto_reu, duracion_reu: @reunion.duracion_reu, estudiantes_id: @reunion.estudiantes_id, fecha_reu: @reunion.fecha_reu, lugar: @reunion.lugar, profesors_id: @reunion.profesors_id, teses_id: @reunion.teses_id }
    assert_redirected_to reunion_path(assigns(:reunion))
  end

  test "should destroy reunion" do
    assert_difference('Reunion.count', -1) do
      delete :destroy, id: @reunion
    end

    assert_redirected_to reunions_path
  end
end
