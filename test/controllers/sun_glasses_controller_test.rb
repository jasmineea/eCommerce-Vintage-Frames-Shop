require 'test_helper'

class SunGlassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sun_glass = sun_glasses(:one)
  end

  test "should get index" do
    get sun_glasses_url
    assert_response :success
  end

  test "should get new" do
    get new_sun_glass_url
    assert_response :success
  end

  test "should create sun_glass" do
    assert_difference('SunGlass.count') do
      post sun_glasses_url, params: { sun_glass: { brand: @sun_glass.brand, condition: @sun_glass.condition, description: @sun_glass.description, frame: @sun_glass.frame, price: @sun_glass.price, title: @sun_glass.title } }
    end

    assert_redirected_to sun_glass_url(SunGlass.last)
  end

  test "should show sun_glass" do
    get sun_glass_url(@sun_glass)
    assert_response :success
  end

  test "should get edit" do
    get edit_sun_glass_url(@sun_glass)
    assert_response :success
  end

  test "should update sun_glass" do
    patch sun_glass_url(@sun_glass), params: { sun_glass: { brand: @sun_glass.brand, condition: @sun_glass.condition, description: @sun_glass.description, frame: @sun_glass.frame, price: @sun_glass.price, title: @sun_glass.title } }
    assert_redirected_to sun_glass_url(@sun_glass)
  end

  test "should destroy sun_glass" do
    assert_difference('SunGlass.count', -1) do
      delete sun_glass_url(@sun_glass)
    end

    assert_redirected_to sun_glasses_url
  end
end
