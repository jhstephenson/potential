require 'test_helper'

class SocioCulturalFactorsControllerTest < ActionController::TestCase
  setup do
    @socio_cultural_factor = socio_cultural_factors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_cultural_factors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_cultural_factor" do
    assert_difference('SocioCulturalFactor.count') do
      post :create, socio_cultural_factor: { factor: @socio_cultural_factor.factor, opportunity: @socio_cultural_factor.opportunity }
    end

    assert_redirected_to socio_cultural_factor_path(assigns(:socio_cultural_factor))
  end

  test "should show socio_cultural_factor" do
    get :show, id: @socio_cultural_factor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_cultural_factor
    assert_response :success
  end

  test "should update socio_cultural_factor" do
    patch :update, id: @socio_cultural_factor, socio_cultural_factor: { factor: @socio_cultural_factor.factor, opportunity: @socio_cultural_factor.opportunity }
    assert_redirected_to socio_cultural_factor_path(assigns(:socio_cultural_factor))
  end

  test "should destroy socio_cultural_factor" do
    assert_difference('SocioCulturalFactor.count', -1) do
      delete :destroy, id: @socio_cultural_factor
    end

    assert_redirected_to socio_cultural_factors_path
  end
end
