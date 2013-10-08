require 'test_helper'

class VitabsControllerTest < ActionController::TestCase
  setup do
    @vitab = vitabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vitabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vitab" do
    assert_difference('Vitab.count') do
      post :create, vitab: { : @vitab., : @vitab., : @vitab., Name: @vitab.Name, dateborrowed: @vitab.dateborrowed, title: @vitab.title }
    end

    assert_redirected_to vitab_path(assigns(:vitab))
  end

  test "should show vitab" do
    get :show, id: @vitab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vitab
    assert_response :success
  end

  test "should update vitab" do
    patch :update, id: @vitab, vitab: { : @vitab., : @vitab., : @vitab., Name: @vitab.Name, dateborrowed: @vitab.dateborrowed, title: @vitab.title }
    assert_redirected_to vitab_path(assigns(:vitab))
  end

  test "should destroy vitab" do
    assert_difference('Vitab.count', -1) do
      delete :destroy, id: @vitab
    end

    assert_redirected_to vitabs_path
  end
end
