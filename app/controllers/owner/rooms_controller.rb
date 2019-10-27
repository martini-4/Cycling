class Owner::RoomsController < ApplicationController
	before_action :authenticate_owner!
    def index
    	# 承認確認
	    if current_owner.approval == false
	      redirect_to wait_path
	    end
    owner = current_owner
    @room = owner.rooms.order(updated_at: :desc)
  end
end
