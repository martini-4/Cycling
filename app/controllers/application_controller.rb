class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

 def after_sign_in_path_for(resource)
 	# userがsign_inした場合
 	if current_user
 	    user_user_path
 	# ownerがsign_inした場合
 	elsif current_owner
 		owner_owner_path
	else
 		admin_menu_path
 		#管理者メニューへのパス
    end
 end

protected
# deviseの初期情報以外のデータを入れる為の記述
	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:sex_id,:lastname_kanji,:firstname_kanji,:lastname_kana,:firstname_kana,:mobile,:address,:proof_picture,:nickname,
      													:deposit_type_id,:bank_stor_name,:bank_account_number,:bank_account_name])
    end
end
