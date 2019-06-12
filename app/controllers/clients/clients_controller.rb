class Clients::ClientsController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def new
  	@address = Address.new
  end

  def create
  	post = Address.new
  	post.save
  	redirect_to clients_client_path(current_client.id)
  end

  private

  def address_params
  	params.require(:address).permit(:last_name, :first_name, :sub_post_code, :sub_address)
  end
end
