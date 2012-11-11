require 'test_helper'

class InquiriesControllerTest < ActionController::TestCase
  setup do
    @inquiry = inquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry" do
    assert_difference('Inquiry.count') do
      post :create, inquiry: { email: @inquiry.email, first_name: @inquiry.first_name, how_did: @inquiry.how_did, issue_type: @inquiry.issue_type, last_name: @inquiry.last_name, phone_no: @inquiry.phone_no }
    end

    assert_redirected_to inquiry_path(assigns(:inquiry))
  end

  test "should show inquiry" do
    get :show, id: @inquiry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry
    assert_response :success
  end

  test "should update inquiry" do
    put :update, id: @inquiry, inquiry: { email: @inquiry.email, first_name: @inquiry.first_name, how_did: @inquiry.how_did, issue_type: @inquiry.issue_type, last_name: @inquiry.last_name, phone_no: @inquiry.phone_no }
    assert_redirected_to inquiry_path(assigns(:inquiry))
  end

  test "should destroy inquiry" do
    assert_difference('Inquiry.count', -1) do
      delete :destroy, id: @inquiry
    end

    assert_redirected_to inquiries_path
  end
end
