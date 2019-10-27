class RootController < ApplicationController


	def about
	end
	def top
	end
	def wait
	end

	def bicycle_index
		@city = City.find(params[:id])
		@bicycle = Bicycle.all.where(approval: true).joins(:exhibition_spots).where(exhibition_spots: {city_id: params[:id]}).page(params[:page]).reverse_order.per(15)
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
		authenticate_admin!
		@owner = Owner.all
		@user = User.all
		@bicycle = Bicycle.all
	end
end
