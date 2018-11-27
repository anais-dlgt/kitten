require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "order can't be placed with an empty cart" do
    get new_order_url
    assert_redirected_to root_path
    assert_equal flash[:notice], "Votre panier est vide"
  end



  test "should get new" do
    post line_items_url, params: {item_id: items(:one).id}
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { cart_id: @order.cart_id, email: @order.email, name: @order.name, status: @order.status } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { cart_id: @order.cart_id, email: @order.email, name: @order.name, status: @order.status } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
