class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.save
  end

  def show
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

# PRIVATE ACTIONS BELOW
private

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
