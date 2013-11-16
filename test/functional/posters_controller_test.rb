require 'test_helper'

class PostersControllerTest < ActionController::TestCase
  setup do
    @poster = posters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poster" do
    assert_difference('Poster.count') do
      post :create, poster: { created_at: @poster.created_at, date_needed: @poster.date_needed, name: @poster.name, poster_id: @poster.poster_id, special_request: @poster.special_request }
    end

    assert_redirected_to poster_path(assigns(:poster))
  end

  test "should show poster" do
    get :show, id: @poster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poster
    assert_response :success
  end

  test "should update poster" do
    put :update, id: @poster, poster: { created_at: @poster.created_at, date_needed: @poster.date_needed, name: @poster.name, poster_id: @poster.poster_id, special_request: @poster.special_request }
    assert_redirected_to poster_path(assigns(:poster))
  end

  test "should destroy poster" do
    assert_difference('Poster.count', -1) do
      delete :destroy, id: @poster
    end

    assert_redirected_to posters_path
  end
end
