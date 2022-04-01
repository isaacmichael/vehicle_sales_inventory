class VehicleSalesController < ApplicationController
  before_action :set_vehicle_sale, only: %i[ show update destroy ]

  # GET /vehicle_sales
  def index
    @vehicle_sales= VehicleSale.all
    paginate @vehicle_sales, per_page: 20
  end

  # GET /vehicle_sales/1
  def show
    render json: @vehicle_sale
  end
#methods to get specific makes, models, etc...
  def searchMake
    @vehicle_sales = VehicleSale.where("make LIKE ?",  params[:make])
    render json: @vehicle_sales
  end

  def searchModel
    @vehicle_sales = VehicleSale.where("model LIKE ?",  params[:model])
    render json: @vehicle_sales
  end

  def searchYear
    @vehicle_sales = VehicleSale.where("year LIKE ?",  params[:year])
    render json: @vehicle_sales
  end

  def searchColor
    @vehicle_sales = VehicleSale.where("color LIKE ?",  params[:color])
    render json: @vehicle_sales
  end

  # POST /vehicle_sales
  def create
    @vehicle_sale = VehicleSale.new(vehicle_sale_params)

    if @vehicle_sale.save
      render json: @vehicle_sale, status: :created, location: @vehicle_sale
    else
      render json: @vehicle_sale.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_sales/1
  def update
    if @vehicle_sale.update(vehicle_sale_params)
      render json: @vehicle_sale
    else
      render json: @vehicle_sale.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_sales/1
  def destroy
    @vehicle_sale.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_sale
      @vehicle_sale = VehicleSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_sale_params
      params.require(:vehicle_sale).permit(:make, :model, :year, :color, :price, :mileage, :spec)
    end
end
