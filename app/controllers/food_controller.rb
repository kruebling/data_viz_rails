class FoodController < ApplicationController
  def index
    @foods = Food.all
  end
end
