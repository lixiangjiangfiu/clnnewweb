require 'test_helper'

class ClnmembersControllerTest < ActionController::TestCase
  setup do
    @clnmember = clnmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clnmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clnmember" do
    assert_difference('Clnmember.count') do
      post :create, clnmember: { company_name: @clnmember.company_name, email: @clnmember.email, first_name: @clnmember.first_name, last_name: @clnmember.last_name, occupation: @clnmember.occupation, phone_no: @clnmember.phone_no }
    end

    assert_redirected_to clnmember_path(assigns(:clnmember))
  end

  test "should show clnmember" do
    get :show, id: @clnmember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clnmember
    assert_response :success
  end

  test "should update clnmember" do
    put :update, id: @clnmember, clnmember: { company_name: @clnmember.company_name, email: @clnmember.email, first_name: @clnmember.first_name, last_name: @clnmember.last_name, occupation: @clnmember.occupation, phone_no: @clnmember.phone_no }
    assert_redirected_to clnmember_path(assigns(:clnmember))
  end

  test "should destroy clnmember" do
    assert_difference('Clnmember.count', -1) do
      delete :destroy, id: @clnmember
    end

    assert_redirected_to clnmembers_path
  end
end
