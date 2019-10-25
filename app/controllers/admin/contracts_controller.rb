class Admin::ContractsController < ApplicationController
  def index
  	@contract = Contract.all
  end

  def show
  	@contract = Contract.find(params[:id])
  	@bicycle = @contract.bicycle
  end
end
