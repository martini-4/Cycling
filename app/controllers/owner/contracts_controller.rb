class Owner::ContractsController < ApplicationController
  def index
  	@owner = current_owner
  	@contract = @owner.contracts
  	@bicycle = @owner.bicycles
  end

  def show
  	@contract = Contract.find(params[:id])
  	@bicycle = @contract.bicycle
  end
end
