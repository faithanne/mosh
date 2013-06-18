require 'test_helper'

class SilentInstallsControllerTest < ActionController::TestCase
  setup do
    @silent_install = silent_installs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:silent_installs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create silent_install" do
    assert_difference('SilentInstall.count') do
      post :create, silent_install: { comment: @silent_install.comment, creation_date: @silent_install.creation_date, file_name: @silent_install.file_name, storage_location: @silent_install.storage_location, user_id: @silent_install.user_id }
    end

    assert_redirected_to silent_install_path(assigns(:silent_install))
  end

  test "should show silent_install" do
    get :show, id: @silent_install
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @silent_install
    assert_response :success
  end

  test "should update silent_install" do
    put :update, id: @silent_install, silent_install: { comment: @silent_install.comment, creation_date: @silent_install.creation_date, file_name: @silent_install.file_name, storage_location: @silent_install.storage_location, user_id: @silent_install.user_id }
    assert_redirected_to silent_install_path(assigns(:silent_install))
  end

  test "should destroy silent_install" do
    assert_difference('SilentInstall.count', -1) do
      delete :destroy, id: @silent_install
    end

    assert_redirected_to silent_installs_path
  end
end
