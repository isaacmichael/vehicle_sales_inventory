require "test_helper"

class VehicleSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_sale = vehicle_sales(:one)
  end

  test "should get index" do
    get vehicle_sales_url, as: :json
    assert_response :success
  end

  test "should create vehicle_sale" do
    assert_difference("VehicleSale.count") do
      post vehicle_sales_url, params: { vehicle_sale: { color: @vehicle_sale.color, make: @vehicle_sale.make, mileage: @vehicle_sale.mileage, model: @vehicle_sale.model, price: @vehicle_sale.price, spec: @vehicle_sale.spec, year: @vehicle_sale.year } }, as: :json
    end

    assert_response :created
  end

  test "should show vehicle_sale" do
    get vehicle_sale_url(@vehicle_sale), as: :json
    assert_response :success
  end

  test "should update vehicle_sale" do
    patch vehicle_sale_url(@vehicle_sale), params: { vehicle_sale: { color: @vehicle_sale.color, make: @vehicle_sale.make, mileage: @vehicle_sale.mileage, model: @vehicle_sale.model, price: @vehicle_sale.price, spec: @vehicle_sale.spec, year: @vehicle_sale.year } }, as: :json
    assert_response :success
  end

  test "should destroy vehicle_sale" do
    assert_difference("VehicleSale.count", -1) do
      delete vehicle_sale_url(@vehicle_sale), as: :json
    end

    assert_response :no_content
  end
end
