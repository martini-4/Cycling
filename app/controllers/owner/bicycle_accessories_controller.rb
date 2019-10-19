class Owner::BicycleAccessoriesController < ApplicationController
	def create
		bicycle_accessory = bicycle_accessory.new(bicycle_accessories_params)
		bicycle_accessort.save
	end
	def destroy
	end
	private
	  def bicycle_accessories_params
	    params.require(:bicycle_accessory).permit(:bicycle_id,:accessorie_id)
	  end
end
