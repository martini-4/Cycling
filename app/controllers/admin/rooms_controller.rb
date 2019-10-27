class Admin::RoomsController < ApplicationController
	before_action :authenticate_admin!
    def index
    @room = Room.all.order(updated_at: :desc)
  end
end
