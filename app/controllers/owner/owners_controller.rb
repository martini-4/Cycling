class Owner::OwnersController < ApplicationController
  def show
    @owner = Owner.find(params[:id])
    @bicycle = @owner.bicycles.page(params[:page]).reverse_order.per(3)
    @bicycles = @owner.bicycles

    # カレンダー用のインスタンスを作成
    @lends = Hash.new
    @bicycles.each do |b|
      @lends.store(b.id, b.lend_days)
    end

     # カレンダーへイベント情報を送る
      respond_to do |format|
        format.html
        format.json { @lends.to_json }
      end

  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    owner = Owner.find(params[:id])
    if owner.update(owner_params)
      flash[:success] = 'オーナー情報を編集しました。'
       redirect_to owner_owner_path(owner.id)
     else
       flash[:danger] = "編集に失敗しました。"
       redirect_to edit_owner_owner_path
    end
  end

  def destroy
  end

  def withdrawal
  end
  protected
    def owner_params
      params.require(:owner).permit(:nickname, :sex_id, :picture)
    end
end
