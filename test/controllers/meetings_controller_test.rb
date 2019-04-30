require 'test_helper'

class MeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    get meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_url
    assert_response :success
  end

  test "should create meeting" do
    assert_difference('Meeting.count') do
      post meetings_url, params: { meeting: { cel: @meeting.cel, date: @meeting.date, dni: @meeting.dni, email: @meeting.email, lastname: @meeting.lastname, name: @meeting.name, status: @meeting.status } }
    end

    assert_redirected_to meeting_url(Meeting.last)
  end

  test "should show meeting" do
    get meeting_url(@meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_url(@meeting)
    assert_response :success
  end

  test "should update meeting" do
    patch meeting_url(@meeting), params: { meeting: { cel: @meeting.cel, date: @meeting.date, dni: @meeting.dni, email: @meeting.email, lastname: @meeting.lastname, name: @meeting.name, status: @meeting.status } }
    assert_redirected_to meeting_url(@meeting)
  end

  test "should destroy meeting" do
    assert_difference('Meeting.count', -1) do
      delete meeting_url(@meeting)
    end

    assert_redirected_to meetings_url
  end
end
