require 'test_helper'

class OtherOpportunitiesControllerTest < ActionController::TestCase
  setup do
    @other_opportunity = other_opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:other_opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create other_opportunity" do
    assert_difference('OtherOpportunity.count') do
      post :create, other_opportunity: { opportunity: @other_opportunity.opportunity }
    end

    assert_redirected_to other_opportunity_path(assigns(:other_opportunity))
  end

  test "should show other_opportunity" do
    get :show, id: @other_opportunity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @other_opportunity
    assert_response :success
  end

  test "should update other_opportunity" do
    patch :update, id: @other_opportunity, other_opportunity: { opportunity: @other_opportunity.opportunity }
    assert_redirected_to other_opportunity_path(assigns(:other_opportunity))
  end

  test "should destroy other_opportunity" do
    assert_difference('OtherOpportunity.count', -1) do
      delete :destroy, id: @other_opportunity
    end

    assert_redirected_to other_opportunities_path
  end
end
