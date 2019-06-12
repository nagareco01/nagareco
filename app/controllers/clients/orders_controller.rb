class Clients::OrdersController < ApplicationController
  def buy
  	@client = Client.find(current_user.id)
  	@order = Order.new
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
