class User::ContractsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @contract = Contract.new
    borrow_day = @contract.borrow_days.build
    @bicycle = Bicycle.find(params[:bicycle])
    @lend_day =@bicycle.lend_days

     # カレンダーイベント表示
    respond_to do |format|
      format.html {render :new}
      format.json {render :new, status: :ok, location: @lend_day.to_json }
    end
  end

  def confirm
    @contract = Contract.new(contract_params)
    @bicycle = @contract.bicycle
    @owner = @contract.owner
    render :confirm
  end

  def create
    contract = Contract.new(contract_params)
    if params [:back]
      @bicycle = @contact.bicycle
      @lend_day = @bicycle.lend_days

      contract_new = Contract.new
      borrow_day = contract_new.borrow_days.build
      render :new
    else
      contract.save
      flash[:success] = "契約を確定いたしました。"
      redirect_to user_user_path(current_user)
    end
  end
  private
  def contract_params
    params.require(:contract).permit(:owner_id, :bicycle_id, :user_id, :price, :total_price, :payment_method,
                                    borrow_days_attributes: [:id, :borrow_day, :lend_spot, :return_spot, :_destroy])
  end
end
