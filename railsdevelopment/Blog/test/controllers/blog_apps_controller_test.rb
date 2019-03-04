require 'test_helper'

class BlogAppsControllerTest < ActionController::TestCase
  setup do
    @blog_app = blog_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_app" do
    assert_difference('BlogApp.count') do
      post :create, blog_app: { index: @blog_app.index }
    end

    assert_redirected_to blog_app_path(assigns(:blog_app))
  end

  test "should show blog_app" do
    get :show, id: @blog_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_app
    assert_response :success
  end

  test "should update blog_app" do
    patch :update, id: @blog_app, blog_app: { index: @blog_app.index }
    assert_redirected_to blog_app_path(assigns(:blog_app))
  end

  test "should destroy blog_app" do
    assert_difference('BlogApp.count', -1) do
      delete :destroy, id: @blog_app
    end

    assert_redirected_to blog_apps_path
  end
end
