class Admin::MassagesController < ApplicationController
  before_action :authenticate_admin!
  def show
  	@room = Room.find(params[:id])
    @message = @room.messages.order(id: "DESC")
  end

  def destroy
    message = Message.find(params[:id])
    room = message.room_id
    message.destroy
    redirect_to admin_massage_path(room)
  end
end
