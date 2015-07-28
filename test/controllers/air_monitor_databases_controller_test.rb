require 'test_helper'

class AirMonitorDatabasesControllerTest < ActionController::TestCase
  setup do
    @air_monitor_database = air_monitor_databases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:air_monitor_databases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air_monitor_database" do
    assert_difference('AirMonitorDatabase.count') do
      post :create, air_monitor_database: { fieldengineer: @air_monitor_database.fieldengineer, noadata: @air_monitor_database.noadata, pm10data: @air_monitor_database.pm10data }
    end

    assert_redirected_to air_monitor_database_path(assigns(:air_monitor_database))
  end

  test "should show air_monitor_database" do
    get :show, id: @air_monitor_database
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @air_monitor_database
    assert_response :success
  end

  test "should update air_monitor_database" do
    patch :update, id: @air_monitor_database, air_monitor_database: { fieldengineer: @air_monitor_database.fieldengineer, noadata: @air_monitor_database.noadata, pm10data: @air_monitor_database.pm10data }
    assert_redirected_to air_monitor_database_path(assigns(:air_monitor_database))
  end

  test "should destroy air_monitor_database" do
    assert_difference('AirMonitorDatabase.count', -1) do
      delete :destroy, id: @air_monitor_database
    end

    assert_redirected_to air_monitor_databases_path
  end
end
