class Owner::PayeesController < ApplicationController
  before_action :authenticate_owner!
  def edit
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
    @owner = current_owner
  end

  def update
    owner = current_owner
    if owner.update(owner_params)
      flash[:success] = '振込先を変更しました。'
      redirect_to owner_owner_path(owner.id)
    else
      flash[:danger] = "変更にに失敗しました。"
      redirect_to edit_owner_owner_path
    end
  end

  protected
  def owner_params
    params.require(:owner).permit(:bank_stor_name, :bank_account_number, :bank_account_name, :deposit_type_id)
  end
end
