class Owner::ContractsController < ApplicationController
  before_action :authenticate_owner!
  def index
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
  	@owner = current_owner
  	@contract = @owner.contracts.page(params[:page]).reverse_order.per(15)
  end

  def bicycle
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
  	@bicycle = Bicycle.find(params[:id])
  	@contract = @bicycle.contracts.page(params[:page]).reverse_order.per(15)
  end

  def show
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
  	@contract = Contract.find(params[:id])
  	@bicycle = @contract.bicycle
  end
end
