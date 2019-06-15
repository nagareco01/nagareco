class Clients::ItemsController < ApplicationController


  def add_item
    if client_signed_in?
      if Item.exists?(cd_id: params[:item][:cd_id], client_id: current_client.id)
        item = Item.find_by(cd_id: params[:item][:cd_id], client_id: current_client.id)
        item.quantity += params[:item][:quantity].to_i
        item.save
      else
  	    item = Item.new(cd_id: params[:item][:cd_id], quantity: params[:item][:quantity])
  	    item.client_id = current_client.id
  	    item.save
      end
  	    redirect_to clients_items_path
    else
      redirect_to new_client_session_path
    end
  end

  def index
    @items = Item.where(client_id: current_client.id)
    @total_quantity = @items.sum(:quantity)
  end

  def update
  	item = Item.find(params[:id])
    item.update(item_params)
    redirect_to clients_items_path
  end

  def destroy
  	item = Item.find(params[:id])
  	item.destroy
  	redirect_to clients_items_path
  end

  private
  def item_params
    params.require(:item).permit(:quantity)
  end
end
