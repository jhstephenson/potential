require 'test_helper'

class TopFivesControllerTest < ActionController::TestCase
  setup do
    @top_fife = top_fives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:top_fives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create top_fife" do
    assert_difference('TopFive.count') do
      post :create, top_fife: { opportunity: @top_fife.opportunity }
    end

    assert_redirected_to top_fife_path(assigns(:top_fife))
  end

  test "should show top_fife" do
    get :show, id: @top_fife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @top_fife
    assert_response :success
  end

  test "should update top_fife" do
    patch :update, id: @top_fife, top_fife: { opportunity: @top_fife.opportunity }
    assert_redirected_to top_fife_path(assigns(:top_fife))
  end

  test "should destroy top_fife" do
    assert_difference('TopFive.count', -1) do
      delete :destroy, id: @top_fife
    end

    assert_redirected_to top_fives_path
  end
end
