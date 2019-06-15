class Clients::ClientsController < ApplicationController
	before_action :authenticate_client!
	before_action :correct_client



  def show
  	@client = Client.find(params[:id])
  end

  def edit
  	@client = Client.find(params[:id])
  end

  def update
  	@client = Client.find(params[:id])
  	if @client.update(client_params)
      redirect_to clients_client_path(params[:id])
      flash[:success] = "Mypageを更新しました"
    else
      render 'edit'
    end
  end

  private

  def client_params
  	params.require(:client).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone)
  end

  def correct_client
  	client = Client.find(params[:id])
  	if current_client != client
  		redirect_to clients_cds_path
  	end
  end
end
