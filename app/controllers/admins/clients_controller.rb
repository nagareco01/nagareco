class Admins::ClientsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @clients = Client.page(params[:page]).per(15)
  end

  def show
    @client = Client.find(params[:id])
    @orders = Order.where(params[:id])
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
    client = Client.find(params[:id])
    client.destroy
    redirect_to admins_cds_path
  end

private

  def client_params
    params.require(:client).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :post_code, :telephone)
  end

  def address_params
    params.require(:address).permit(:last_name, :first_name, :sub_post_code, :sub_address)
  end

end
