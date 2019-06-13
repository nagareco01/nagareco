class Clients::OrdersController < ApplicationController
  def buy 
    @client = Client.find(current_client.id)
    @order = Order.new
  end

  def purchase
    post = Order.new(order_params)

    if post == current_client.id

      address = post.address
      address.save
      post_code = post.post_code
      post_code.save
      last_name = post.last_name
      first_name = post.first_name
      name = last_name + first_name
      name.save

    else

     address = post.sub_address
     address.save
     post_code = post.sub_post_code
     post_code.save
     last_name = post.last_name
     first_name = post.first_name
     name = last_name + first_name
     name.save
    end
    redirect_to clients_path
  end

  private

  def order_params
    params.require(:order).permit(:payment, :total_price, :shipping_name, :shipping_post_code, :shipping_address)
  end
end
