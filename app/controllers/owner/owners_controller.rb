class Owner::OwnersController < ApplicationController
  before_action :authenticate_owner!
  def show
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
    @owner = current_owner
    @bicycle = @owner.bicycles.where(approval: true).page(params[:page]).reverse_order.per(3)
    @bicycles = @owner.bicycles

    # カレンダー用のインスタンスを作成
    @lends = Hash.new
    @bicycles.each do |b|

      @lends.store(b.id, [])

      b.lend_days.each do |l|

        @lends[b.id].push(l.lend_day)
      end
    end

    @borrow = Hash.new
    @bicycles.each do |b|
      @borrow.store(b.id, [])
      b.contracts.each do |c|

        c.borrow_days.each do |borrow|

          @borrow[b.id].push(borrow.borrow_day)

        end
      end
    end
     # カレンダーへイベント情報を送る
      respond_to do |format|
        format.html
        format.json {render :show, status: :ok, location: @lends.to_json }
        format.json {render :show, status: :ok, location: @borrow.to_json }
      end

  end

  def edit
    # 承認確認
    if current_owner.approval == false
      redirect_to wait_path
    end
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
