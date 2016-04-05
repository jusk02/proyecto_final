require 'test_helper'

class CalificationsControllerTest < ActionController::TestCase
  setup do
    @calification = califications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:califications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calification" do
    assert_difference('Calification.count') do
      post :create, calification: { location_id: @calification.location_id, message: @calification.message, score: @calification.score, user_id: @calification.user_id }
    end

    assert_redirected_to calification_path(assigns(:calification))
  end

  test "should show calification" do
    get :show, id: @calification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calification
    assert_response :success
  end

  test "should update calification" do
    patch :update, id: @calification, calification: { location_id: @calification.location_id, message: @calification.message, score: @calification.score, user_id: @calification.user_id }
    assert_redirected_to calification_path(assigns(:calification))
  end

  test "should destroy calification" do
    assert_difference('Calification.count', -1) do
      delete :destroy, id: @calification
    end

    assert_redirected_to califications_path
  end
end
