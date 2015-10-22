require 'test_helper'

class ConsultantSowsControllerTest < ActionController::TestCase
  setup do
    @consultant_sow = consultant_sows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultant_sows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultant_sow" do
    assert_difference('ConsultantSow.count') do
      post :create, consultant_sow: { consultant_id: @consultant_sow.consultant_id, sow_id: @consultant_sow.sow_id }
    end

    assert_redirected_to consultant_sow_path(assigns(:consultant_sow))
  end

  test "should show consultant_sow" do
    get :show, id: @consultant_sow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultant_sow
    assert_response :success
  end

  test "should update consultant_sow" do
    patch :update, id: @consultant_sow, consultant_sow: { consultant_id: @consultant_sow.consultant_id, sow_id: @consultant_sow.sow_id }
    assert_redirected_to consultant_sow_path(assigns(:consultant_sow))
  end

  test "should destroy consultant_sow" do
    assert_difference('ConsultantSow.count', -1) do
      delete :destroy, id: @consultant_sow
    end

    assert_redirected_to consultant_sows_path
  end
end
