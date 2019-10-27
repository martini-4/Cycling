class Admin::NewUsersController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@user = User.all.where(approval: false).page(params[:page]).per(30)
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	user = User.find(params[:id])
  	user.update(user_new_params)
  	flash[:success] = 'ユーザーを承認しました。'
    redirect_to admin_new_users_path
  end

  def destroy
  	user = User.find(params[:id])
  	user.destroy
  	flash[:danger] = 'ユーザーを削除しました。'
  	redirect_to admin_new_users_path
  end
  private
  	def user_new_params
  		params.require(:user).permit(:approval)
  	end
end
