class User::ContractsController < ApplicationController
  before_action :authenticate_user!
  def index
    # 承認確認
    if current_user.approval == false
      redirect_to wait_path
    end
    @user = current_user
    @contract = @user.contracts.page(params[:page]).reverse_order.per(15)
  end

  def show
    # 承認確認
    if current_user.approval == false
      redirect_to wait_path
    end
    @contract = Contract.find(params[:id])
    @bicycle = @contract.bicycle
  end

  def new
    # 承認確認
    if current_user.approval == false
      redirect_to wait_path
    end
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
    # 承認確認
    if current_user.approval == false
      redirect_to wait_path
    end
    @contract = Contract.new(contract_params)
    @bicycle = @contract.bicycle
    @owner = @contract.owner
    @borrow_day = @contract.borrow_days

    @contract_new = Contract.new(contract_params)
    borrow_day = @contract_new.borrow_days.build
    render :confirm
  end

  def create
    @contract = Contract.new(contract_params)
    if params[:back]
      @bicycle = @contract.bicycle
      @lend_day = @bicycle.lend_days

      contract_new = Contract.new
      borrow_day = contract_new.borrow_days.build
      render :new
    else
      if @contract.save!
        borrow_days = @contract.borrow_days
        lend_days = @contract.bicycle.lend_days
        borrow_days.each do |b|
          lend_days.each do |l|
            if l.lend_day == b.borrow_day
              l.destroy
            end
          end
        end
        flash[:success] = "契約を確定いたしました。"
        redirect_to user_user_path(current_user)
      else
        flash[:danger] = "契約に失敗しました。"
        redirect_to user_user_path(current_user)
      end
    end
  end
  private
  def contract_params
    params.require(:contract).permit(:owner_id, :bicycle_id, :user_id, :price, :total_price, :payment_method,
                                    borrow_days_attributes: [:id, :borrow_day, :lend_spot, :return_spot, :_destroy])
  end
end
