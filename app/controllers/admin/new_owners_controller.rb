class Admin::NewOwnersController < ApplicationController
  def index
  	@owner = Owner.all.where(approval: false).page(params[:page]).per(30)
  end

  def edit
  	@owner = Owner.find(params[:id])
  end

  def update
  	owner = Owner.find(params[:id])
  	owner.update(owner_new_params)
  	flash[:success] = 'オーナーを承認しました。'
    redirect_to admin_new_owners_path
  end

  def destroy
  	owner = Owner.find(params[:id])
  	owner.destroy
  	flash[:danger] = 'オーナーを削除しました。'
  	redirect_to admin_new_owners_path
  end
  private
  	def owner_new_params
  		params.require(:owner).permit(:approval)
  	end
end
