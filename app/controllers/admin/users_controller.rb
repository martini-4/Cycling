class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@user = User.all.page(params[:page]).per(30)
  end

  def show
    @user = User.find(params[:id])
    @contracts = @user.contracts

    # カレンダーイベント表示
    respond_to do |format|
      format.html {render :show}
      format.json {render :show, status: :ok, location: @contracts.to_json }
    end
  end

  def destroy
  	user = User.find(params[:id])
    user.destroy
    flash[:success] = 'ユーザーを削除しました。'
    redirect_to admin_users_path
  end
end

