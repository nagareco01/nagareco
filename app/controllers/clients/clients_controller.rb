class Clients::ClientsController < ApplicationController
	befor_action :authenticate_client!


  def show
  	@client = Client.find(params[:id])
  end

  def edit
  	#@client = Client.find(params[:id])
  end

  def update
  end

  private
end
