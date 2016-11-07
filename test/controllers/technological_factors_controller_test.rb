require 'test_helper'

class TechnologicalFactorsControllerTest < ActionController::TestCase
  setup do
    @technological_factor = technological_factors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technological_factors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technological_factor" do
    assert_difference('TechnologicalFactor.count') do
      post :create, technological_factor: { factor: @technological_factor.factor, opportunity: @technological_factor.opportunity }
    end

    assert_redirected_to technological_factor_path(assigns(:technological_factor))
  end

  test "should show technological_factor" do
    get :show, id: @technological_factor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technological_factor
    assert_response :success
  end

  test "should update technological_factor" do
    patch :update, id: @technological_factor, technological_factor: { factor: @technological_factor.factor, opportunity: @technological_factor.opportunity }
    assert_redirected_to technological_factor_path(assigns(:technological_factor))
  end

  test "should destroy technological_factor" do
    assert_difference('TechnologicalFactor.count', -1) do
      delete :destroy, id: @technological_factor
    end

    assert_redirected_to technological_factors_path
  end
end
