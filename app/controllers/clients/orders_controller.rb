class Clients::OrdersController < ApplicationController
  def buy 
    @client = Client.find(current_client.id)
    @order = Order.new
    items = Item.where(client_id: current_client.id)
    @total_price = 0
    items.each do |item|
      @total_price += item.quantity * item.price
    end

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

    items = Item.where(client_id: current_client.id)
    items.each do |item|
      order_item = post.order_items.new
      order_item.cd_id = item.cd_id
      order_item.quantity = item.quantity
      order_item.puchased_price = item.price
      total_price += item.quantity * item.price
    end

    post.total_price = total_price

    post.save
    items.destroy
    redirect_to clients_path
  end

  private

  def order_params
    params.require(:order).permit(:payment, :total_price, :shipping_name, :shipping_post_code, :shipping_address)
  end
end