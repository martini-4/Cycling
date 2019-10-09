class Owner::PayeesController < ApplicationController
  def edit
  end

  def update
  end

  def create
    @payee = Payee.new(payee_params)
    @payee.owner_id = current_owner.id
      if @payee.save
        flash[:success] = '振込先の登録が完了しました'
        redirect_to wait_path
      else
        flash[:danger] = "振込先の登録に失敗しました。"
        redirect_to new_owner_registration_path
      end
  end
end
