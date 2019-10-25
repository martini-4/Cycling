class Admin::RepliesController < ApplicationController
  def new
  	@inquiry = Inquiry.find(params[:id])
  	@reply = Reply.new
  end

	def create
		reply = Reply.new(reply_params)
		inquiry_id = reply.inquiry_id
		if reply.save
			flash[:notice] = '返信を完了しました'
			redirect_to admin_inquiries_path
		else
			flash[:danger] = '返信内容を入力して下さい'
			redirect_to new_admin_reply_path(id: inquiry_id)
		end
	end

	private
	def reply_params
		params.require(:reply).permit(:reply_content,:inquiry_id)
	end
end
