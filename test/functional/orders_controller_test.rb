require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { city: @order.city, company: @order.company, desh: @order.desh, email: @order.email, leg5: @order.leg5, leg6: @order.leg6, leg7: @order.leg7, name: @order.name, payment: @order.payment, phone: @order.phone, units: @order.units }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { city: @order.city, company: @order.company, desh: @order.desh, email: @order.email, leg5: @order.leg5, leg6: @order.leg6, leg7: @order.leg7, name: @order.name, payment: @order.payment, phone: @order.phone, units: @order.units }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
