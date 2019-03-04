require 'test_helper'

class HmtldemosControllerTest < ActionController::TestCase
  setup do
    @hmtldemo = hmtldemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hmtldemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hmtldemo" do
    assert_difference('Hmtldemo.count') do
      post :create, hmtldemo: { body: @hmtldemo.body, title: @hmtldemo.title }
    end

    assert_redirected_to hmtldemo_path(assigns(:hmtldemo))
  end

  test "should show hmtldemo" do
    get :show, id: @hmtldemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hmtldemo
    assert_response :success
  end

  test "should update hmtldemo" do
    patch :update, id: @hmtldemo, hmtldemo: { body: @hmtldemo.body, title: @hmtldemo.title }
    assert_redirected_to hmtldemo_path(assigns(:hmtldemo))
  end

  test "should destroy hmtldemo" do
    assert_difference('Hmtldemo.count', -1) do
      delete :destroy, id: @hmtldemo
    end

    assert_redirected_to hmtldemos_path
  end
end
