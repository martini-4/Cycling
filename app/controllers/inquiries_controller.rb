class InquiriesController < ApplicationController
  def new
  	@inquiry = Inquiry.new
    if user_signed_in?
      @user = User.find(current_user.id)
    end
    if owner_signed_in?
      @owner = Owner.find(current_owner.id)
    end
  end

  def create
  	inquiry = Inquiry.new(inquiry_params)
  	if inquiry.save
  	  flash[:notice] = 'お問い合わせありがとうございます。''内容を確認の上後日管理者からご連絡させていただきます。'
      if user_signed_in?
  	    redirect_to user_user_path(current_user)
      elsif owner_signed_in?
        redirect_to owner_owner_path(current_owner)
      else
        redirect_to top_path
      end
    else
      flash[:danger] = '問い合わせに失敗しました。'
      redirect_to new_inquiry_path
    end
  end



  private
  def inquiry_params
  	params.require(:inquiry).permit(:inquirer_name,:inquirer_mail,:inquiry_content)
  end
end
