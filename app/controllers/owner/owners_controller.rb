class Owner::OwnersController < ApplicationController
  def show
    @owner = current_owner
    @bicycle = @owner.bicycles.page(params[:page]).reverse_order.per(3)
    @bicycles = @owner.bicycles

    # カレンダー用のインスタンスを作成
    @lends = Hash.new
    @borrow = Hash.new


    @bicycles.each do |b|
      
      @lends.store(b.id, [])

      b.lend_days.each do |l|
        p l
        @lends[b.id].push(l.lend_day)
      end
    end


    @bicycles.each do |b|
      @borrow.store(b.id, [])
      b.contracts.each do |c|

        c.borrow_days.each do |borrow|

          p borrow
          @borrow[b.id].push(borrow.borrow_day)

        end

      end

    end


    p @lends
    p @borrow
     # カレンダーへイベント情報を送る
      respond_to do |format|
        format.html
        format.json {render :show, status: :ok, location: @lends.to_json }
        format.json {render :show, status: :ok, location: @borrow.to_json }
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
