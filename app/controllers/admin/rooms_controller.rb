class Admin::RoomsController < ApplicationController
    def index
    @room = Room.all.order(updated_at: :desc)
  end
end
