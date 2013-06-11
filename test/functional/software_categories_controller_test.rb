require 'test_helper'

class SoftwareCategoriesControllerTest < ActionController::TestCase
  setup do
    @software_category = software_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_category" do
    assert_difference('SoftwareCategory.count') do
      post :create, software_category: { name: @software_category.name }
    end

    assert_redirected_to software_category_path(assigns(:software_category))
  end

  test "should show software_category" do
    get :show, id: @software_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software_category
    assert_response :success
  end

  test "should update software_category" do
    put :update, id: @software_category, software_category: { name: @software_category.name }
    assert_redirected_to software_category_path(assigns(:software_category))
  end

  test "should destroy software_category" do
    assert_difference('SoftwareCategory.count', -1) do
      delete :destroy, id: @software_category
    end

    assert_redirected_to software_categories_path
  end
end
