class RootController < ApplicationController

before_action :set_search

def set_search
  @search = Bicycle.ransack(params[:q])
  @search_products = @search.result.page(params[:page])
end

	def about
	end
	def top
	end
	def wait
	end

	def bicycle_index
		@bicycle = Bicycle.includes([:exhibition_spots]).page(params[:page]).reverse_order.per(20).includes(:bicycle_pictures)
    	@check = params[:q][:exhibition_spot_city_id_eq]#検索ワードを持つ
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
