class RestosController < ApplicationController

  def index
    @category = params[:food_type]

    if @category
      @restos = RESTAURANTS.select {|r| r[:category] == @category }
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
