class Owner::BicyclePicturesController < ApplicationController
	def update
		@bicycle = Bicycle.find(params[:id])
		# デフォルト住所をフォルスにする
	    @picture = @bicycle.bicycle_pictures.find_by(default: :true)
	    if @picture != nil
	       @picture.update(default: false)
	    end
	    # 選択した住所をトゥルーにする
	    @choice_picture = BicyclePicture.find(params[:picture])
	    if @choice_picture.update(default: true)
	      flash[:success] = '一覧画面の画像に設定しました。'
	      redirect_to edit_owner_bicycle_path(@bicycle)
	    end
	end
	def destroy
		@bicycl = Bicycle.find(params[:id])
		@picture = BicyclePicture.find(params[:picture])
	    @picture.destroy
	    redirect_to edit_owner_bicycle_path(params[:id])
	end
	private
end
