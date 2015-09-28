require 'test_helper'

class SeiLocsControllerTest < ActionController::TestCase
  setup do
    @sei_loc = sei_locs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sei_locs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sei_loc" do
    assert_difference('SeiLoc.count') do
      post :create, sei_loc: { name: @sei_loc.name }
    end

    assert_redirected_to sei_loc_path(assigns(:sei_loc))
  end

  test "should show sei_loc" do
    get :show, id: @sei_loc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sei_loc
    assert_response :success
  end

  test "should update sei_loc" do
    patch :update, id: @sei_loc, sei_loc: { name: @sei_loc.name }
    assert_redirected_to sei_loc_path(assigns(:sei_loc))
  end

  test "should destroy sei_loc" do
    assert_difference('SeiLoc.count', -1) do
      delete :destroy, id: @sei_loc
    end

    assert_redirected_to sei_locs_path
  end
end
