require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { p_address: @patient.p_address, p_address_2: @patient.p_address_2, p_birthday: @patient.p_birthday, p_city: @patient.p_city, p_first_name: @patient.p_first_name, p_last_name: @patient.p_last_name, p_middle_name: @patient.p_middle_name, p_state: @patient.p_state, p_zip_code: @patient.p_zip_code, practice_id: @patient.practice_id }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { p_address: @patient.p_address, p_address_2: @patient.p_address_2, p_birthday: @patient.p_birthday, p_city: @patient.p_city, p_first_name: @patient.p_first_name, p_last_name: @patient.p_last_name, p_middle_name: @patient.p_middle_name, p_state: @patient.p_state, p_zip_code: @patient.p_zip_code, practice_id: @patient.practice_id }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
