require 'test_helper'

class TrashWheelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trash_wheel = trash_wheels(:one)
  end

  test "should get index" do
    get trash_wheels_url
    assert_response :success
  end

  test "should get new" do
    get new_trash_wheel_url
    assert_response :success
  end

  test "should create trash_wheel" do
    assert_difference('TrashWheel.count') do
      post trash_wheels_url, params: { trash_wheel: { eyes: @trash_wheel.eyes, title: @trash_wheel.title, trashy: @trash_wheel.trashy } }
    end

    assert_redirected_to trash_wheel_url(TrashWheel.last)
  end

  test "should show trash_wheel" do
    get trash_wheel_url(@trash_wheel)
    assert_response :success
  end

  test "should get edit" do
    get edit_trash_wheel_url(@trash_wheel)
    assert_response :success
  end

  test "should update trash_wheel" do
    patch trash_wheel_url(@trash_wheel), params: { trash_wheel: { eyes: @trash_wheel.eyes, title: @trash_wheel.title, trashy: @trash_wheel.trashy } }
    assert_redirected_to trash_wheel_url(@trash_wheel)
  end

  test "should destroy trash_wheel" do
    assert_difference('TrashWheel.count', -1) do
      delete trash_wheel_url(@trash_wheel)
    end

    assert_redirected_to trash_wheels_url
  end
end
