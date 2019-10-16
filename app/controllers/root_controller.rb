class RootController < ApplicationController


	def about
	end
	def top
	end
	def wait
	end

	def bicycle_index
		@city = City.find(params[:id])
		@exhibition = ExhibitionSpot.where(city_id: @city)
	end

	def bicycle_show
	end

	def city
		@city = City.all
		@bicycle = Bicycle.all
	end

	def unsubscribe
	end

	def admin_menu
	end
end
