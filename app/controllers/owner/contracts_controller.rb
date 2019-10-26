class Owner::ContractsController < ApplicationController
  def index
  	@owner = current_owner
  	@contract = @owner.contracts.page(params[:page]).reverse_order.per(15)
  end

  def bicycle
  	@bicycle = Bicycle.find(params[:id])
  	@contract = @bicycle.contracts.page(params[:page]).reverse_order.per(15)
  end

  def show
  	@contract = Contract.find(params[:id])
  	@bicycle = @contract.bicycle
  end
end
