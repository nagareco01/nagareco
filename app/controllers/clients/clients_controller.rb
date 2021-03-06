class Clients::ClientsController < ApplicationController
	before_action :authenticate_client!
	before_action :correct_client,except: [:create, :remove_address, :new]

  def show
  	@client = Client.find(params[:id])
    @address = Address.where(client_id: current_client.id)
  end

  def edit
  	@client = Client.find(params[:id])
  end

  def update
    if params[:client][:password].blank?
      params[:client].delete("password")
      params[:client].delete("password_confirmation")
    end

  	@client = Client.find(params[:id])
  	if @client.update(client_params)
      sign_in(@client, :bypass => true)
      flash[:notice] = "ユーザ情報を更新しました"
      redirect_to clients_client_path(params[:id])
    else
      flash[:notice] = "ユーザ情報の入力が正しくありません"
      render 'edit'
    end
  end

  def new
    @address = Address.new
  end

  def create
    @address = current_client.addresses.new(address_params)
    @address.client_id = current_client.id
      if  @address.save
          redirect_to clients_client_path(current_client.id)
          flash[:client_update] = "住所新規登録完了しました"
      else
          flash[:danger] = "空欄があります！"
          render 'clients/clients/new'
      end
  end

  def remove_address
    #binding.pry
    address = Address.find(params[:id])
    address.destroy
    flash[:client_update] = "住所を削除しました"
    redirect_to clients_client_path(current_client.id)
  end

  def destroy
    client = Client.find(params[:id])
    client.destroy
    redirect_to clients_cds_path
  end

  private

  def client_params
  	params.require(:client).permit(:email, :password, :password_confirmation, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone)
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
