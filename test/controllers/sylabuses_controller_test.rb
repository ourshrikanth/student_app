require 'test_helper'

class SylabusesControllerTest < ActionController::TestCase
  setup do
    @sylabus = sylabuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sylabuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sylabus" do
    assert_difference('Sylabus.count') do
      post :create, sylabus: { name: @sylabus.name, user_id: @sylabus.user_id }
    end

    assert_redirected_to sylabus_path(assigns(:sylabus))
  end

  test "should show sylabus" do
    get :show, id: @sylabus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sylabus
    assert_response :success
  end

  test "should update sylabus" do
    patch :update, id: @sylabus, sylabus: { name: @sylabus.name, user_id: @sylabus.user_id }
    assert_redirected_to sylabus_path(assigns(:sylabus))
  end

  test "should destroy sylabus" do
    assert_difference('Sylabus.count', -1) do
      delete :destroy, id: @sylabus
    end

    assert_redirected_to sylabuses_path
  end
end
