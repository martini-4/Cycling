class Admin::NewBicycleController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@bicycle = Bicycle.all.where(approval: false).page(params[:page]).per(30)
  end

  def edit
  	@bicycle = Bicycle.find(params[:id])
  end

  def update
  	bicycle = Bicycle.find(params[:id])
  	bicycle.update(bicycle_new_params)
  	flash[:success] = '自転車を承認しました。'
    redirect_to admin_new_bicycle_index_path
  end

  def destroy
  	bicycle = Bicycle.find(params[:id])
  	bicycle.destroy
  	flash[:danger] = '自転車を削除しました。'
  	redirect_to admin_new_bicycle_index_path
  end
  private
  	def bicycle_new_params
  		params.require(:bicycle).permit(:approval)
  	end
end
