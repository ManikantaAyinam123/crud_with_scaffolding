require "test_helper"

class EmployeeDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_datum = employee_data(:one)
  end

  test "should get index" do
    get employee_data_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_datum_url
    assert_response :success
  end

  test "should create employee_datum" do
    assert_difference("EmployeeDatum.count") do
      post employee_data_url, params: { employee_datum: { name: @employee_datum.name, role: @employee_datum.role, salary: @employee_datum.salary } }
    end

    assert_redirected_to employee_datum_url(EmployeeDatum.last)
  end

  test "should show employee_datum" do
    get employee_datum_url(@employee_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_datum_url(@employee_datum)
    assert_response :success
  end

  test "should update employee_datum" do
    patch employee_datum_url(@employee_datum), params: { employee_datum: { name: @employee_datum.name, role: @employee_datum.role, salary: @employee_datum.salary } }
    assert_redirected_to employee_datum_url(@employee_datum)
  end

  test "should destroy employee_datum" do
    assert_difference("EmployeeDatum.count", -1) do
      delete employee_datum_url(@employee_datum)
    end

    assert_redirected_to employee_data_url
  end
end
