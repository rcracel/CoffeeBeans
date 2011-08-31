require 'test_helper'

class CoffeeBeansControllerTest < ActionController::TestCase
  setup do
    @coffee_bean = coffee_beans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffee_beans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee_bean" do
    assert_difference('CoffeeBean.count') do
      post :create, :coffee_bean => @coffee_bean.attributes
    end

    assert_redirected_to coffee_bean_path(assigns(:coffee_bean))
  end

  test "should show coffee_bean" do
    get :show, :id => @coffee_bean.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coffee_bean.to_param
    assert_response :success
  end

  test "should update coffee_bean" do
    put :update, :id => @coffee_bean.to_param, :coffee_bean => @coffee_bean.attributes
    assert_redirected_to coffee_bean_path(assigns(:coffee_bean))
  end

  test "should destroy coffee_bean" do
    assert_difference('CoffeeBean.count', -1) do
      delete :destroy, :id => @coffee_bean.to_param
    end

    assert_redirected_to coffee_beans_path
  end
end
