class Admin::InquiriesController < ApplicationController
	before_action :authenticate_admin!
  def index
  	@inquiry = Inquiry.page(params[:page]).reverse_order.per(8)
  end
end
