require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { appraised_value: @quote.appraised_value, customer_id: @quote.customer_id, document_type: @quote.document_type, down_payment: @quote.down_payment, fico_score: @quote.fico_score, loan_amount: @quote.loan_amount, loan_type: @quote.loan_type, occupancy_type: @quote.occupancy_type, program_type: @quote.program_type, property_type: @quote.property_type, purchase_price: @quote.purchase_price }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    put :update, id: @quote, quote: { appraised_value: @quote.appraised_value, customer_id: @quote.customer_id, document_type: @quote.document_type, down_payment: @quote.down_payment, fico_score: @quote.fico_score, loan_amount: @quote.loan_amount, loan_type: @quote.loan_type, occupancy_type: @quote.occupancy_type, program_type: @quote.program_type, property_type: @quote.property_type, purchase_price: @quote.purchase_price }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
