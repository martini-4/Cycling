class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
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
