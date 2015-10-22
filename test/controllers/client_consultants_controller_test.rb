require 'test_helper'

class ClientConsultantsControllerTest < ActionController::TestCase
  setup do
    @client_consultant = client_consultants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_consultants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_consultant" do
    assert_difference('ClientConsultant.count') do
      post :create, client_consultant: { client_id: @client_consultant.client_id, consultant: @client_consultant.consultant }
    end

    assert_redirected_to client_consultant_path(assigns(:client_consultant))
  end

  test "should show client_consultant" do
    get :show, id: @client_consultant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_consultant
    assert_response :success
  end

  test "should update client_consultant" do
    patch :update, id: @client_consultant, client_consultant: { client_id: @client_consultant.client_id, consultant: @client_consultant.consultant }
    assert_redirected_to client_consultant_path(assigns(:client_consultant))
  end

  test "should destroy client_consultant" do
    assert_difference('ClientConsultant.count', -1) do
      delete :destroy, id: @client_consultant
    end

    assert_redirected_to client_consultants_path
  end
end
