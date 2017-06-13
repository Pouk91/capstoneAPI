class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :destroy]
  before_action :validate_user
  # GET /cars
  def index
    @cars = current_user.cars.all

    render json: @cars
  end

  # GET /cars/1
  def show
    render json: @car
  end

  # POST /cars
  def create
    @car = current_user.cars.build(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = current_user.cars.find(params[:id])
    end

    def validate_user
      set_current_user
    end

    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:year, :make, :model, :repairs)
    end
end
