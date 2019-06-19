class Clients::OrdersController < ApplicationController

  def index
    @orders = Order.where(client_id: current_client.id)
    @total_price = 0
    orders = Order.where(client_id: current_client.id)
    orders.each do |order|
      @total_price += order.total_price
    end
  end

  def show
    @item = OrderItem.find(params[:id])
  end

  def buy 
    @client = Client.find(current_client.id)
    @order = Order.new
    items = Item.where(client_id: current_client.id)
    @total_price = 0
    items.each do |item|
      @total_price += item.quantity * item.cd.price
    end

  end

  def purchase
    post = current_client.orders.new
    post.payment = params[:order][:payment].to_i
    post.client_id = params[:order][:client_id]
    post.shipping_address = params[:order][:shipping_address]

    if params[:order][:client_id] == nil

      post.shipping_address = Address.find(params[:order][:shipping_address]).sub_address
      post.shipping_post_code = Address.find(params[:order][:shipping_address]).sub_post_code
      last_name = Address.find(params[:order][:shipping_address]).last_name
      first_name = Address.find(params[:order][:shipping_address]).first_name
      post.shipping_name = last_name + first_name
      post.client_id = current_client.id

    else

      post.shipping_address = Client.find(params[:order][:client_id]).address
      post.shipping_post_code = Client.find(params[:order][:client_id]).post_code
      last_name = Client.find(current_client.id).last_name
      first_name = Client.find(current_client.id).first_name
      post.shipping_name = last_name + first_name

    end

    items = Item.where(client_id: current_client.id)
    @total_price = 0
    items.each do |item|
      order_item = post.order_items.new
      order_item.cd_id = item.cd_id
      order_item.quantity = item.quantity
      order_item.purchased_price = item.cd.price
      @total_price += item.quantity * item.cd.price
    end

    post.payment = order_params[:payment].to_i
    post.shipment_status = 0
    post.total_price = @total_price

    items.each do |i|
      if i.quantity >= i.cd.stock
        flash[:notice] = "カート投入中、他のお客様による同一商品の購入があったため、購入の処理を完了することができませんでした。#{i.cd.name}の在庫数が#{i.cd.stock}枚となっております。お手数ですが#{i.cd.stock}枚以下にご変更の後、再度ご注文をお願いいたします。"
        redirect_to clients_items_path
        return
      end
    end

    if post.save

      post.order_items.each do |t|
        cd = Cd.find_by(id: t.cd_id)
        cd.stock -= t.quantity
        cd.save
      end
      items.destroy_all

    else

      flash[:notice] = "購入に失敗しました。"
      @client = Client.find(current_client.id)
      @order = Order.new
      items = Item.where(client_id: current_client.id)
      @total_price = 0
      items.each do |item|
        @total_price += item.quantity * item.price
      end
      render :buy

    end
  end

  private

  def order_params
    params.require(:order).permit(:payment, :client_id)
  end
end