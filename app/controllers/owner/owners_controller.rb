class Owner::OwnersController < ApplicationController
  def show
    @owner = Owner.find(params[:id])
    @bicycle = @owner.bicycles
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update(owner_params)
      flash[:success] = 'オーナー情報を編集しました。'
       redirect_to owner_owner_path(@owner.id)
     else
       flash[:danger] = "編集に失敗しました。"
       redirect_to edit_owner_owner_path
    end
  end

  def destory
  end

  def withdrawal
  end
  protected
    def owner_params
      params.require(:owner).permit(:nickname, :sex_id, :picture)
    end
end
