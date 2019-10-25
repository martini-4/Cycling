class Admin::OwnersController < ApplicationController
  def index
  	@owner = Owner.all.page(params[:page]).per(30)
  end

  def show
  end
end
