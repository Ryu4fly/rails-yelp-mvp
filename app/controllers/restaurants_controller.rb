class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :rating, :category)
  end
end

#           Prefix Verb   URI Pattern                    Controller#Action
# restaurant_index GET    /restaurant(.:format)          restaurant#index
#                  POST   /restaurant(.:format)          restaurant#create
#   new_restaurant GET    /restaurant/new(.:format)      restaurant#new
#  edit_restaurant GET    /restaurant/:id/edit(.:format) restaurant#edit
#       restaurant GET    /restaurant/:id(.:format)      restaurant#show
#                  PATCH  /restaurant/:id(.:format)      restaurant#update
#                  PUT    /restaurant/:id(.:format)      restaurant#update
#                  DELETE /restaurant/:id(.:format)      restaurant#destroy
