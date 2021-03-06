class Owner::BicyclesController < ApplicationController

  def index
  end

  def new
    authenticate_owner!
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
    @bicycle = Bicycle.new
    @exhibition_spots = @bicycle.exhibition_spots.build
    @lend_spots =@bicycle.lend_spots.build
    @return_spots = @bicycle.return_spots.build
    @bicycle_accessories = @bicycle.bicycle_accessories.build
    @bicycle_picture = @bicycle.bicycle_pictures.build
  end

  def show
    @bicycle = Bicycle.find(params[:id])
    @lend_day =@bicycle.lend_days

    # メッセージルーム作成
    @room_new = Room.new

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
    authenticate_owner!
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
    @bicycle = Bicycle.find(params[:id])
    @picture = @bicycle.bicycle_pictures
    @accessory = @bicycle.bicycle_accessories

    bicycle_new = Bicycle.new
    exhibition_spots = bicycle_new.exhibition_spots.build
    lend_spots =bicycle_new.lend_spots.build
    return_spots = bicycle_new.return_spots.build
    bicycle_accessories = bicycle_new.bicycle_accessories.build
    bicycle_picture = bicycle_new.bicycle_pictures.build

    # 貸し出し予定日の検索
    # @borrow_day = Hash.new
    # @bicycle.contracts.each do |c|
    #   c.borrow_days.each do |b|
    #     @borrow_day.store(b.borrow_day)
    #   end
    # end

  end

  def create
    bicycle = Bicycle.new(bicycle_params)
    bicycle.owner_id = current_owner.id
    if bicycle.save
      flash[:success] = "出品の更新が完了いたしました。"
      redirect_to wait_path
    else
      flash[:danger] = "出品更新に失敗しました。入力内容をご確認ください。"
      redirect_to new_owner_bicycle_path
    end
  end

  def update
    bicycle = Bicycle.find(params[:id])
    if bicycle.update(bicycle_params)
      flash[:success] = '更新が完了しました。'
      redirect_to owner_bicycle_path(bicycle.id)
    else
      flash[:danger] = '更新に失敗しました。入力内容をご確認ください。'
      redirect_to edit_owner_bicycle_path(bicycle.id)
    end

  end

  def destroy
    bicycle = Bicycle.find(params[:id])
    owner = current_owner.id
    bicycle.destroy
    flash[:success] = '自転車を削除しました。'
    redirect_to owner_owner_path(owner)
  end
  private
    def bicycle_params
    params.require(:bicycle).permit(:owner_id, :bicycle_type_id, :handle_id, :name, :price, :description, :proof_picture, :buyer_name, accessory_ids: [],
                                    exhibition_spots_attributes: [:id, :city_id, :_destroy],
                                    lend_spots_attributes: [:id, :lend_spot, :_destroy],
                                    return_spots_attributes: [:id, :return_spot, :_destroy],
                                    bicycle_pictures_attributes: [:id, :bicycle_picture, :_destroy])
    end
end
