require 'test_helper'

class InstallsControllerTest < ActionController::TestCase
  setup do
    @install = installs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:installs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create install" do
    assert_difference('Install.count') do
      post :create, install: { image_id: @install.image_id, software_id: @install.software_id }
    end

    assert_redirected_to install_path(assigns(:install))
  end

  test "should show install" do
    get :show, id: @install
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @install
    assert_response :success
  end

  test "should update install" do
    put :update, id: @install, install: { image_id: @install.image_id, software_id: @install.software_id }
    assert_redirected_to install_path(assigns(:install))
  end

  test "should destroy install" do
    assert_difference('Install.count', -1) do
      delete :destroy, id: @install
    end

    assert_redirected_to installs_path
  end
end
