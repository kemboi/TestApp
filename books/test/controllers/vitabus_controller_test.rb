require 'test_helper'

class VitabusControllerTest < ActionController::TestCase
  setup do
    @vitabus = vitabus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vitabus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vitabus" do
    assert_difference('Vitabu.count') do
      post :create, vitabus: { Name: @vitabus.Name, dateborrowed: @vitabus.dateborrowed, title: @vitabus.title }
    end

    assert_redirected_to vitabus_path(assigns(:vitabus))
  end

  test "should show vitabus" do
    get :show, id: @vitabus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vitabus
    assert_response :success
  end

  test "should update vitabus" do
    patch :update, id: @vitabus, vitabus: { Name: @vitabus.Name, dateborrowed: @vitabus.dateborrowed, title: @vitabus.title }
    assert_redirected_to vitabus_path(assigns(:vitabus))
  end

  test "should destroy vitabus" do
    assert_difference('Vitabu.count', -1) do
      delete :destroy, id: @vitabus
    end

    assert_redirected_to vitabus_path
  end
end
