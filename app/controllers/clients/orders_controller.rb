class Clients::OrdersController < ApplicationController
  def buy 
    @client = Client.find(current_client.id)
    @order = Order.new
  end

  def purchase
    post = current_client.orders.new(order_params)

    if params[:client_id] = nil
      address = Address.find(params:[shipping_address])

      # address = post.address
      # address.save
      post.post_code = address.post_code
      post_code.save
      last_name = post.last_name
      first_name = post.first_name
      name = last_name + first_name
      name.save

      post.save
    else
   # binding.pry
      address = Client.find(params[:order][:client_id]).address


    end

    # else

    #  address = post.sub_address
    #  address.save
    #  post_code = post.sub_post_code
    #  post_code.save
    #  last_name = post.last_name
    #  first_name = post.first_name
    #  name = last_name + first_name
    #  name.save
    # end
    # redirect_to clients_path
  end

  private

  def order_params
    params.require(:order).permit(:payment, :total_price, :shipping_name, :shipping_post_code, :shipping_address)
  end
end
