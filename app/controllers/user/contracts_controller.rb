class User::ContractsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @contract = Contract.new
    @bicycle = Bicycle.find(params[:bicycle])
  end

  def confirm
  end

  def create
  end
end
