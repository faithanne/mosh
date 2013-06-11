require 'test_helper'

class SoftwaresControllerTest < ActionController::TestCase
  setup do
    @software = softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software" do
    assert_difference('Software.count') do
      post :create, software: { comment: @software.comment, install_id: @software.install_id, name: @software.name, software_category_id: @software.software_category_id, source_url: @software.source_url, version: @software.version, year: @software.year }
    end

    assert_redirected_to software_path(assigns(:software))
  end

  test "should show software" do
    get :show, id: @software
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software
    assert_response :success
  end

  test "should update software" do
    put :update, id: @software, software: { comment: @software.comment, install_id: @software.install_id, name: @software.name, software_category_id: @software.software_category_id, source_url: @software.source_url, version: @software.version, year: @software.year }
    assert_redirected_to software_path(assigns(:software))
  end

  test "should destroy software" do
    assert_difference('Software.count', -1) do
      delete :destroy, id: @software
    end

    assert_redirected_to softwares_path
  end
end
