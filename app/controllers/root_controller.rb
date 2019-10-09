class RootController < ApplicationController
	def about
	end
	def top
	end
	def wait
	end

	def bicycle_index
	end

	def bicycle_show
	end

	def city
		@city = City.all
	end

	def unsubscribe
	end

	def admin_menu
	end
end
