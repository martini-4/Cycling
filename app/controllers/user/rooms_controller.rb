class User::RoomsController < ApplicationController
  def index
    @user = current_user
    @room = @user.rooms
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
