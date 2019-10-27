class Admin::ContractsController < ApplicationController
	before_action :authenticate_admin!
  def index
  	@contract = Contract.all.page(params[:page]).reverse_order.per(15)
  end

  def show
  	@contract = Contract.find(params[:id])
  	@bicycle = @contract.bicycle
  end
end
