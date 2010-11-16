require 'test_helper'

class UsereffectsControllerTest < ActionController::TestCase
  setup do
    @usereffect = usereffects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usereffects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usereffect" do
    assert_difference('Usereffect.count') do
      post :create, :usereffect => @usereffect.attributes
    end

    assert_redirected_to usereffect_path(assigns(:usereffect))
  end

  test "should show usereffect" do
    get :show, :id => @usereffect.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @usereffect.to_param
    assert_response :success
  end

  test "should update usereffect" do
    put :update, :id => @usereffect.to_param, :usereffect => @usereffect.attributes
    assert_redirected_to usereffect_path(assigns(:usereffect))
  end

  test "should destroy usereffect" do
    assert_difference('Usereffect.count', -1) do
      delete :destroy, :id => @usereffect.to_param
    end

    assert_redirected_to usereffects_path
  end
end
