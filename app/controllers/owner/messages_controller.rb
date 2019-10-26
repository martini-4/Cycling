class Owner::MessagesController < ApplicationController
  def show
  	@room = Room.find(params[:id])
    @message = @room.messages.order(id: "DESC")
  	@message_new = Message.new
  end

  def create
  	message = Message.new(message_params)
  	message.save
    room = Room.find(message.room_id)
    room.touch
    redirect_to owner_message_path(message.room_id)
    # render :json => message.comment
  end

  def destroy
    message = Message.find(params[:id])
    room = message.room_id
    message.destroy
    redirect_to owner_message_path(room)
  end
  private
  def message_params
  	params.require(:message).permit(:room_id, :owner_id, :user_id, :comment)
  end
end
