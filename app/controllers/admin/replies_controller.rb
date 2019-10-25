class Admin::RepliesController < ApplicationController
  def new
  	@inquiry = Inquiry.find(params[:id])
  	@reply = Reply.new
  end

  def create
  end
end
