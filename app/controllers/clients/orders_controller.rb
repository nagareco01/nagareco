class Clients::OrdersController < ApplicationController
  def buy
  	@client = Client.find(current_client.id)
  	@order = Order.new
  	@code = @client.address.sub_post_code || @client.post_code
  	@name = @client.address.last_name + @client.address.first_name || @client.last_name + @client.first_name
  end

  def purchase
  	post = Order.new(order_params)
  	post.save
  	redirect_to clients_path
  end

  private

  def order_params
  	params.require(:order).permit(:payment, :total_price, :shipping_name, :shipping_post_code, :shipping_address)
  end
end
