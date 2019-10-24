class User::UsersController < ApplicationController
  def show
    @user = current_user
    @contracts = @user.contracts

    # カレンダーイベント表示
    respond_to do |format|
      format.html {render :show}
      format.json {render :show, status: :ok, location: @contracts.to_json }
    end
  end

  def edit
    @user = current_user
  end

  def update
    user = current_user
    if user.update!(user_params)
      flash[:success] = 'ユーザー情報を編集しました。'
       redirect_to user_user_path(user.id)
     else
       flash[:danger] = "編集に失敗しました。"
       redirect_to edit_user_user_path
    end
  end

def destroy
    user = current_user
    user.destroy
    flash[:success] = 'ご利用ありがとうございました。'
    redirect_to top_path
end

  def withdrawal
  end
    protected
    def user_params
      params.require(:user).permit(:nickname, :sex_id, :picture)
    end
end
