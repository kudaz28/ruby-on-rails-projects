require 'test_helper'

class SensorAppsControllerTest < ActionController::TestCase
  setup do
    @sensor_app = sensor_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_app" do
    assert_difference('SensorApp.count') do
      post :create, sensor_app: { title: @sensor_app.title }
    end

    assert_redirected_to sensor_app_path(assigns(:sensor_app))
  end

  test "should show sensor_app" do
    get :show, id: @sensor_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_app
    assert_response :success
  end

  test "should update sensor_app" do
    patch :update, id: @sensor_app, sensor_app: { title: @sensor_app.title }
    assert_redirected_to sensor_app_path(assigns(:sensor_app))
  end

  test "should destroy sensor_app" do
    assert_difference('SensorApp.count', -1) do
      delete :destroy, id: @sensor_app
    end

    assert_redirected_to sensor_apps_path
  end
end
