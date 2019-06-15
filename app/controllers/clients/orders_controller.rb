class Clients::OrdersController < ApplicationController
  def buy 
    @client = Client.find(current_client.id)
    @order = Order.new
    @items = Item.where(client_id = current_client.id)
  end

  def purchase
    post = current_client.orders.new(order_params)

    if params[:client_id] = nil

      post.shipping_address = Address.find(params:[shipping_address])
      post.shipping_post_code = Address.find(params:[shipping_address]).post_code
      last_name = Address.find(params:[shipping_address]).last_name
      first_name = Address.find(params:[shipping_address]).first_name
      post.shipping_name = last_name + first_name

    else

      post.shipping_address = Client.find(params[:order][:client_id]).address
      post.shipping_post_code = Client.find(params[:order][:client_id]).post_code
      last_name = Client.find(current_client.id).last_name
      first_name = Client.find(current_client.id).first_name
      post.shipping_name = last_name + first_name

    end

    post.total_price = Item.where(current_client.id).quantity * Item.where(current_client.id).cd.price + 500

    post.save

     redirect_to clients_path
  end

  private

  def order_params
    params.require(:order).permit(:payment, :total_price, :shipping_name, :shipping_post_code, :shipping_address)
  end
end
