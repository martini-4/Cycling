class Owner::RoomsController < ApplicationController
    def index
    owner = current_owner
    @room = owner.rooms.order(updated_at: :desc)
  end
end
