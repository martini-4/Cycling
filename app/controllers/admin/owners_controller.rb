class Admin::OwnersController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@owner = Owner.all.page(params[:page]).per(30)
  end

  def show
    @owner = Owner.find(params[:id])
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

  def destroy
  	owner = Owner.find(params[:id])
    owner.destroy
    flash[:success] = 'オーナーを削除しました。'
    redirect_to admin_owners_path
  end
end
