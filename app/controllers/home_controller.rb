class HomeController < ApplicationController
  def index
    @earnings = Earning.all
  end
end
