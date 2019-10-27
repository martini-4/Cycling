class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

 def after_sign_in_path_for(resource)
 	# userがsign_inした場合
 	if current_user
 	    user_user_path(current_user.id)
 	# ownerがsign_inした場合
 	elsif current_owner
 		owner_owner_path(current_owner.id)
	else
 		admin_menu_path
 		#管理者メニューへのパス
    end
 end
  def after_sign_up_path_for(resource)
 	# userがsign_inした場合
 	if current_user
 	    wait_path
 	# ownerがsign_inした場合
 	elsif current_owner
 		wait_path
 	end
 end
 def after_sign_out_path_for(resource)
	top_path
 end




protected
# deviseの初期情報以外のデータを入れる為の記述
	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:sex_id,:lastname_kanji,:firstname_kanji,:lastname_kana,:firstname_kana,:mobile,:address,:proof_picture,:nickname,
      													:deposit_type_id,:bank_stor_name,:bank_account_number,:bank_account_name])
    end
end
