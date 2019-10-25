class Admin::BicyclesController < ApplicationController
  def index
  end

  def show
    @bicycle = Bicycle.find(params[:id])
    @lend_day =@bicycle.lend_days
    # レビュー
    @review = Review.new
    @reviews = @bicycle.reviews.page(params[:page]).reverse_order.per(5)

    # カレンダーイベント表示
    respond_to do |format|
      format.html {render :show}
      format.json {render :show, status: :ok, location: @lend_day.to_json }
    end
  end

  def edit
  end

  def update
  end

  def destroy
    bicycle = Bicycle.find(params[:id])
    bicycle.destroy
    flash[:success] = '自転車を削除しました。'
    redirect_to admin_menu_path
  end

end
