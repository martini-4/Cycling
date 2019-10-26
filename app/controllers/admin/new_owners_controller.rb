class Admin::NewOwnersController < ApplicationController
  def index
  	@owner = Owner.all.where(approval: false).page(params[:page]).per(30)
  end

  def edit
  	@owner = Owner.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
