class EarningController < ApplicationController
  def index
    @earnings = Earning.all
  end
end
