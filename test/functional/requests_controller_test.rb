require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { comment: @request.comment, image_id: @request.image_id, instructions: @request.instructions, name: @request.name, request_status_id: @request.request_status_id, software_category_id: @request.software_category_id, source_url: @request.source_url, user_id: @request.user_id, year: @request.year }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    put :update, id: @request, request: { comment: @request.comment, image_id: @request.image_id, instructions: @request.instructions, name: @request.name, request_status_id: @request.request_status_id, software_category_id: @request.software_category_id, source_url: @request.source_url, user_id: @request.user_id, year: @request.year }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
