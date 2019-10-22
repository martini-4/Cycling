class User::ReviewsController < ApplicationController
	def create
		review = Review.new(review_params)
		bicycle = review.bicycle_id
		if review.save
			flash[:success] = "レビューを投稿しました。"
	    	redirect_to owner_bicycle_path(bicycle)
	    else
	    	flash[:danger] = "内容を入力して下さい。"
	    	redirect_to owner_bicycle_path(bicycle)
	    end

	end
	def destroy
		review = Review.find(params[:review])
	    bicycle = review.bicycle_id
	    review.destroy
	    if admin_signed_in?
	    	flash[:success] = "レビューを削除しました。"
	    	redirect_to admin_bicycle_path(bicycle)
	    else
	    	flash[:danger] = "レビューを削除しました。"
	    	redirect_to owner_bicycle_path(bicycle)
	    end
	end

	private
		def review_params
			params.require(:review).permit(:bicycle_id, :user_id,:review_message)
		end
end
