require 'test_helper'

class KemboisControllerTest < ActionController::TestCase
  setup do
    @kemboi = kembois(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kembois)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kemboi" do
    assert_difference('Kemboi.count') do
      post :create, kemboi: { address: @kemboi.address, name: @kemboi.name }
    end

    assert_redirected_to kemboi_path(assigns(:kemboi))
  end

  test "should show kemboi" do
    get :show, id: @kemboi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kemboi
    assert_response :success
  end

  test "should update kemboi" do
    patch :update, id: @kemboi, kemboi: { address: @kemboi.address, name: @kemboi.name }
    assert_redirected_to kemboi_path(assigns(:kemboi))
  end

  test "should destroy kemboi" do
    assert_difference('Kemboi.count', -1) do
      delete :destroy, id: @kemboi
    end

    assert_redirected_to kembois_path
  end
end
