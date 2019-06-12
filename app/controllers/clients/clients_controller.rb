class Clients::ClientsController < ApplicationController
	#befor_action :authenticate_client!
	#befor_action :currect_client


  def show
  	@client = Client.find(params[:id])
  end

  def edit
  	#@client = Client.find(params[:id])
  end

  def update
  end

  private

  #def client_params
  	#params.require(:client).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone)
  #end

  #def correct_client
  	#client = Client.find(params[:id])
  	#if current_client != client
  		#redirect_to client_path(current_client)
  	#end
  #end

  #def logged_in_user
  	#unless logged_in?
  		#flash[:danger] = "Please log in."
  		#redirect_to login_url
  	#end
  #end
end
