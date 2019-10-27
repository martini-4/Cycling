class User::MessagesController < ApplicationController
  before_action :authenticate_user!
  def show
    # 承認確認
    if current_user.approval == false
      redirect_to wait_path
    end
  	@room = Room.find(params[:id])
    @message = @room.messages.order(id: "DESC")
  	@message_new = Message.new
  end

  def create
  	message = Message.new(message_params)
  	message.save!
    redirect_to user_message_path(message.room_id)
    # render :json => message.comment
  end

  def destroy
    message = Message.find(params[:id])
    room = message.room_id
    message.destroy
    redirect_to user_message_path(room)
  end
  private
  def message_params
  	params.require(:message).permit(:room_id, :owner_id, :user_id, :comment)
  end
end
