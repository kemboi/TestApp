require 'test_helper'

class BookborrowingsControllerTest < ActionController::TestCase
  setup do
    @bookborrowing = bookborrowings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookborrowings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookborrowing" do
    assert_difference('Bookborrowing.count') do
      post :create, bookborrowing: { : @bookborrowing., : @bookborrowing., : @bookborrowing., : @bookborrowing., author: @bookborrowing.author, date_publish: @bookborrowing.date_publish, name: @bookborrowing.name, title: @bookborrowing.title }
    end

    assert_redirected_to bookborrowing_path(assigns(:bookborrowing))
  end

  test "should show bookborrowing" do
    get :show, id: @bookborrowing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookborrowing
    assert_response :success
  end

  test "should update bookborrowing" do
    patch :update, id: @bookborrowing, bookborrowing: { : @bookborrowing., : @bookborrowing., : @bookborrowing., : @bookborrowing., author: @bookborrowing.author, date_publish: @bookborrowing.date_publish, name: @bookborrowing.name, title: @bookborrowing.title }
    assert_redirected_to bookborrowing_path(assigns(:bookborrowing))
  end

  test "should destroy bookborrowing" do
    assert_difference('Bookborrowing.count', -1) do
      delete :destroy, id: @bookborrowing
    end

    assert_redirected_to bookborrowings_path
  end
end
