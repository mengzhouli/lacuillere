class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurants.all

  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @restaurants = Restaurants.new

  end
  def create
  end
  def edit
    @restaurant = Restaurant.find(params[:id])

  end
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.? # We'll see that in a moment.
  end
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end
end
