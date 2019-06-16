class Clients::ClientsController < ApplicationController
	before_action :authenticate_client!
	before_action :correct_client,except: :create

  def show
  	@client = Client.find(params[:id])
    @addresses = Address.where(client_id: current_client.id)
  end

  def edit
  	@client = Client.find(params[:id])
  end

  def update
  	@client = Client.find(params[:id])
  	if @client.update(client_params)
      redirect_to clients_client_path(params[:id])
    else
      render 'edit'
    end
  end

  def new
    @address = Address.new
  end

  def create
    post = Address.new
    post.save
    redirect_to clients_client_path(current_client.id)
  end

  def destroy
    post = Address.find(params[:id])
    post.destroy
    redirect_to clients_client_path(@client.id)
  end

  private

  def client_params
  	params.require(:client).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone)
  end

  def address_params
    params.require(:address).permit(:last_name, :first_name, :sub_post_code, :sub_address)
  end

  def correct_client
  	client = Client.find(params[:id])
  	if current_client != client
  		redirect_to clients_cds_path
  	end
  end

end
