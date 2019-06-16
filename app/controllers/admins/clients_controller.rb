class Admins::ClientsController < ApplicationController
  #before_action :authenticate_admin!
  #before_action :correct_admin

  def index
    @clients = Client.page(params[:page]).per(3)
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to admins_client_path(params[:id])
    else
      render 'edit'
    end
  end

  def destroy
  end

private

  def client_params
    params.require(:client).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone)
  end

end
