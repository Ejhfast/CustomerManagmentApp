require 'test_helper'

class AccountactionsControllerTest < ActionController::TestCase
  setup do
    @accountaction = accountactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accountactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accountaction" do
    assert_difference('Accountaction.count') do
      post :create, :accountaction => @accountaction.attributes
    end

    assert_redirected_to accountaction_path(assigns(:accountaction))
  end

  test "should show accountaction" do
    get :show, :id => @accountaction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @accountaction.to_param
    assert_response :success
  end

  test "should update accountaction" do
    put :update, :id => @accountaction.to_param, :accountaction => @accountaction.attributes
    assert_redirected_to accountaction_path(assigns(:accountaction))
  end

  test "should destroy accountaction" do
    assert_difference('Accountaction.count', -1) do
      delete :destroy, :id => @accountaction.to_param
    end

    assert_redirected_to accountactions_path
  end
end
