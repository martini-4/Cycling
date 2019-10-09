class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?


protected
# deviseの初期情報以外のデータを入れる為の記述
	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:sex_id,:lastname_kanji,:firstname_kanji,:lastname_kana,:firstname_kana,:mobile,:address,:proof_picture,:nickname,:approval,
      													payees_attributes:[:deposit_type_id,:stor_name,:account_number,:account_name]])
    end
end
