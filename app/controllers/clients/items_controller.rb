class Clients::ItemsController < ApplicationController
  def add_item
  	item = Item.new(cd_id: params[:id])
  	item.quantity = params['quantity']
    #上記、要修正
  	item.save
  	redirect_to edit_clients_path(item.id)
  end

  def edit
  end

  def update
  	item = Item.find(params[:id])
    item.quantity = params['quantity']
    #上記、要修正
    item.update
    redirect_to clients_order_buy_path(order.id)
  end

  def destroy
  	item = Item.find(params[:id])
  	item.destroy
  	render "edit"
  end
end
