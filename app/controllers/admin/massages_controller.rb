class Admin::MassagesController < ApplicationController
  def show
  	@room = Room.find(params[:id])
    @message = @room.messages.order(id: "DESC")
  end

  def destroy
    message = Message.find(params[:id])
    room = message.room_id
    message.destroy
    redirect_to admin_message_path(room)
  end
end
