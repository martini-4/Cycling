class Owner::OwnersController < ApplicationController
  def show
    @owner = current_owner
    @bicycle = @owner.bicycles.page(params[:page]).reverse_order.per(3)
    @bicycles = @owner.bicycles

    # カレンダー用のインスタンスを作成
    @lends = Hash.new
    @borrow = Hash.new
    @bicycles.each do |b|

      @lends.store(b.id, b.lend_days)

      b.contracts.each do |c|

        @borrow.store(b.id, c.borrow_days)
      end

    end

     # カレンダーへイベント情報を送る
      respond_to do |format|
        format.html
        format.json { @lends.to_json }
        format.json { @borrow.to_json }
      end

  end

  def edit
    @owner = current_owner
  end

  def update
    owner = current_owner
    if owner.update(owner_params)
      flash[:success] = 'オーナー情報を編集しました。'
       redirect_to owner_owner_path(owner.id)
     else
       flash[:danger] = "編集に失敗しました。"
       redirect_to edit_owner_owner_path
    end
  end

def destroy
    owner = current_owner
    owner.destroy
    flash[:success] = 'ご利用ありがとうございました。'
    redirect_to top_path
end

  def withdrawal
  end
  protected
    def owner_params
      params.require(:owner).permit(:nickname, :sex_id, :picture)
    end
end
