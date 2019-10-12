class Owner::BicyclesController < ApplicationController
  before_action :authenticate_owner!
  def index
  end

  def new
    @bicycle = Bicycle.new
    @exhibition_spots = @bicycle.exhibition_spots.build
    @lend_spots =@bicycle.lend_spots.build
    @return_spots = @bicycle.return_spots.build
    @bicycle_accessories = @bicycle.bicycle_accessories.build
    @bicycle_picture = @bicycle.bicycle_pictures.build
    @accessory = Accessory.all
  end

  def show
  end

  def edit
  end

  def create
    @bicycle = Bicycle.new(product_params)
    @bicycle.owner_id = current_owner.id
    binding.pry
    if @bicycle.save!
      flash[:success] = "出品の更新が完了いたしました。"
      redirect_to owner_bicycle_path(@bicycle.id)
    else
      flash[:danger] = "出品更新に失敗しました。入力内容をご確認ください。"
      redirect_to new_owner_bicycle_path
    end
  end

  def update
  end

  def destory
  end
  private
    def product_params
    params.require(:bicycle).permit(:owner_id, :bicycle_type_id, :handle_id, :name, :price, :description, :proof_picture, :buyer_name, :approval,
                                    exhibition_spots_attributes: [:bicycle_id, :city_id, :_destroy],
                                    lend_spots_attributes: [:bicycle_id, :lend_spot, :_destroy],
                                    return_spots_attributes: [:bicycle_id, :return_spot, :_destroy],
                                    bicycle_accessories_attributes: [:bicycle_id, :accessorie_id, :_destroy],
                                    bicycle_pictures_attributes: [:bicycle_id, :bicycle_picture, :_destroy])
    end
end
