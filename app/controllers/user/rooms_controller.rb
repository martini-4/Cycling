class User::RoomsController < ApplicationController
    before_action :authenticate_user!
  def index
    if current_user.approval == false
      redirect_to wait_path
    end
    @user = current_user
    @room = @user.rooms.order(updated_at: :desc)
  end

  def create
  	room = Room.new(room_params)
  	room.save
  	flash[:success] = 'メッセージルームを作成しました。'
  	redirect_to user_message_path(room.id)
  end

  private
  	def room_params
  		params.require(:room).permit(:owner_id, :bicycle_id, :user_id)
  	end
end
