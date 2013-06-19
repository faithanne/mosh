require 'test_helper'

class SoftwareTestsControllerTest < ActionController::TestCase
  setup do
    @software_test = software_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_test" do
    assert_difference('SoftwareTest.count') do
      post :create, software_test: { comment: @software_test.comment, email_confirmation_date: @software_test.email_confirmation_date, faculty_test_date: @software_test.faculty_test_date, faculty_tester_id: @software_test.faculty_tester_id, student_test_date: @software_test.student_test_date, student_tester_id: @software_test.student_tester_id }
    end

    assert_redirected_to software_test_path(assigns(:software_test))
  end

  test "should show software_test" do
    get :show, id: @software_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software_test
    assert_response :success
  end

  test "should update software_test" do
    put :update, id: @software_test, software_test: { comment: @software_test.comment, email_confirmation_date: @software_test.email_confirmation_date, faculty_test_date: @software_test.faculty_test_date, faculty_tester_id: @software_test.faculty_tester_id, student_test_date: @software_test.student_test_date, student_tester_id: @software_test.student_tester_id }
    assert_redirected_to software_test_path(assigns(:software_test))
  end

  test "should destroy software_test" do
    assert_difference('SoftwareTest.count', -1) do
      delete :destroy, id: @software_test
    end

    assert_redirected_to software_tests_path
  end
end
