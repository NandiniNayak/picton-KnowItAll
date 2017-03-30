require 'test_helper'

class TimeTablesControllerTest < ActionController::TestCase
  setup do
    @time_table = time_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_table" do
    assert_difference('TimeTable.count') do
      post :create, time_table: { assignment_due: @time_table.assignment_due, date: @time_table.date, day: @time_table.day, end_time: @time_table.end_time, equipment: @time_table.equipment, period: @time_table.period, room_number: @time_table.room_number, start_time: @time_table.start_time, student_name: @time_table.student_name, subject: @time_table.subject, teacher: @time_table.teacher, user_id: @time_table.user_id, week: @time_table.week, year_group: @time_table.year_group }
    end

    assert_redirected_to time_table_path(assigns(:time_table))
  end

  test "should show time_table" do
    get :show, id: @time_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_table
    assert_response :success
  end

  test "should update time_table" do
    patch :update, id: @time_table, time_table: { assignment_due: @time_table.assignment_due, date: @time_table.date, day: @time_table.day, end_time: @time_table.end_time, equipment: @time_table.equipment, period: @time_table.period, room_number: @time_table.room_number, start_time: @time_table.start_time, student_name: @time_table.student_name, subject: @time_table.subject, teacher: @time_table.teacher, user_id: @time_table.user_id, week: @time_table.week, year_group: @time_table.year_group }
    assert_redirected_to time_table_path(assigns(:time_table))
  end

  test "should destroy time_table" do
    assert_difference('TimeTable.count', -1) do
      delete :destroy, id: @time_table
    end

    assert_redirected_to time_tables_path
  end
end
