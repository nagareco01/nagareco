class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :set_search

	def after_sign_in_path_for(resource)
		clients_cds_path
	end

	#def after_sign_out_path_for(resource)
	#end

	def set_search
		@search = Cd.ransack(params[:q])
		@search_cds = @search.result.includes(:artist)
	end

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone])
	end
end
