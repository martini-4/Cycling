class Owner::OwnersController < ApplicationController
  def show
    @owner = Owner.find(params[:id])
    @bicycle = @owner.bicycles
  end

  def edit
  end

  def withdrawal
  end

  def update
  end

  def destory
  end
end
