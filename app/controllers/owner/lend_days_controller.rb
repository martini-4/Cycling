class Owner::LendDaysController < ApplicationController
  def edit
    # 自転車情報の表示
    @bicycle = Bicycle.find(params[:id])
    @lend_spot = @bicycle.lend_spots
    @return_spot = @bicycle.return_spots
    @lend_day = @bicycle.lend_days
    # カレンダーイベント表示
    respond_to do |format|
      format.html {render :edit}
      format.json {render :edit, status: :ok, location: @lend_day.to_json }
    end
  end

  def update
    bicycle = Bicycle.find(params[:id])
    if bicycle.update(lend_day_params)
      flash[:success] = "貸し出し可能日を追加しました。"
      redirect_to owner_bicycle_path(@bicycle.id)
    else
      flash[:danger] = "日付を選択して下さい。"
      redirect_to new_owner_bicycle_path
    end
  end
  def destroy
    bicycl = Bicycle.find(params[:id])
    lend_day = LendDay.find(params[:lend_day])
    lend_day.destroy
    redirect_to edit_owner_lend_day_path(params[:id])
  end
  private
    def lend_day_params
      params.require(:bicycle).permit(lend_days_attributes: [:id,:lend_day ,:_destroy])
    end
end
