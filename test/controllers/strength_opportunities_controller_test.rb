require 'test_helper'

class StrengthOpportunitiesControllerTest < ActionController::TestCase
  setup do
    @strength_opportunity = strength_opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strength_opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strength_opportunity" do
    assert_difference('StrengthOpportunity.count') do
      post :create, strength_opportunity: { opportunity: @strength_opportunity.opportunity }
    end

    assert_redirected_to strength_opportunity_path(assigns(:strength_opportunity))
  end

  test "should show strength_opportunity" do
    get :show, id: @strength_opportunity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strength_opportunity
    assert_response :success
  end

  test "should update strength_opportunity" do
    patch :update, id: @strength_opportunity, strength_opportunity: { opportunity: @strength_opportunity.opportunity }
    assert_redirected_to strength_opportunity_path(assigns(:strength_opportunity))
  end

  test "should destroy strength_opportunity" do
    assert_difference('StrengthOpportunity.count', -1) do
      delete :destroy, id: @strength_opportunity
    end

    assert_redirected_to strength_opportunities_path
  end
end
