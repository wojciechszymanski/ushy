require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { indicative_selling: @product.indicative_selling, low_stock_qty: @product.low_stock_qty, name: @product.name, product_category_id: @product.product_category_id, qty_allocated: @product.qty_allocated, qty_in_stock: @product.qty_in_stock, re_order_qty: @product.re_order_qty, unit_id: @product.unit_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { indicative_selling: @product.indicative_selling, low_stock_qty: @product.low_stock_qty, name: @product.name, product_category_id: @product.product_category_id, qty_allocated: @product.qty_allocated, qty_in_stock: @product.qty_in_stock, re_order_qty: @product.re_order_qty, unit_id: @product.unit_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
