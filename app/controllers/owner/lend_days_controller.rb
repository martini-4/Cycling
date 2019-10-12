class Owner::LendDaysController < ApplicationController
  def edit
  	@bicycle = Bicycle.find(params[:id])
  	@lend_spot = @bicycle.lend_spots
  	@return_spot = @bicycle.return_spots
  	@lend_day = @bicycle.lend_days
  end
  def create
  end
  def destory
  end
end
