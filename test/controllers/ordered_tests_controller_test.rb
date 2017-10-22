require 'test_helper'

class OrderedTestsControllerTest < ActionController::TestCase
  setup do
    @ordered_test = ordered_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordered_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordered_test" do
    assert_difference('OrderedTest.count') do
      post :create, ordered_test: { patient_id: @ordered_test.patient_id }
    end

    assert_redirected_to ordered_test_path(assigns(:ordered_test))
  end

  test "should show ordered_test" do
    get :show, id: @ordered_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordered_test
    assert_response :success
  end

  test "should update ordered_test" do
    patch :update, id: @ordered_test, ordered_test: { patient_id: @ordered_test.patient_id }
    assert_redirected_to ordered_test_path(assigns(:ordered_test))
  end

  test "should destroy ordered_test" do
    assert_difference('OrderedTest.count', -1) do
      delete :destroy, id: @ordered_test
    end

    assert_redirected_to ordered_tests_path
  end
end
