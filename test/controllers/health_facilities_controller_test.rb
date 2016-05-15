require 'test_helper'

class HealthFacilitiesControllerTest < ActionController::TestCase
  setup do
    @health_facility = health_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_facility" do
    assert_difference('HealthFacility.count') do
      post :create, health_facility: { address: @health_facility.address, classOf: @health_facility.classOf, lat: @health_facility.lat, longi: @health_facility.longi, typeOf: @health_facility.typeOf }
    end

    assert_redirected_to health_facility_path(assigns(:health_facility))
  end

  test "should show health_facility" do
    get :show, id: @health_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_facility
    assert_response :success
  end

  test "should update health_facility" do
    patch :update, id: @health_facility, health_facility: { address: @health_facility.address, classOf: @health_facility.classOf, lat: @health_facility.lat, longi: @health_facility.longi, typeOf: @health_facility.typeOf }
    assert_redirected_to health_facility_path(assigns(:health_facility))
  end

  test "should destroy health_facility" do
    assert_difference('HealthFacility.count', -1) do
      delete :destroy, id: @health_facility
    end

    assert_redirected_to health_facilities_path
  end
end
