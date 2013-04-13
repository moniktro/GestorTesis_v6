require 'test_helper'

class CompromisoControllerTest < ActionController::TestCase
  test "should get asunto:string" do
    get :asunto:string
    assert_response :success
  end

  test "should get descripcioncompromiso:string" do
    get :descripcioncompromiso:string
    assert_response :success
  end

  test "should get fechaLimite:date" do
    get :fechaLimite:date
    assert_response :success
  end

  test "should get finalizado:boolean" do
    get :finalizado:boolean
    assert_response :success
  end

  test "should get estudiantes_id" do
    get :estudiantes_id
    assert_response :success
  end

  test "should get profesors_id:integer" do
    get :profesors_id:integer
    assert_response :success
  end

  test "should get teses_id:integer" do
    get :teses_id:integer
    assert_response :success
  end

end
