class Clients::ItemsController < ApplicationController


  def add_item

    if client_signed_in?
      cd = Cd.find(params[:item][:cd_id])
      if cd.stock < params[:item][:quantity].to_i
        flash[:notice] = "#{cd.name}の在庫が#{cd.stock}枚なので、#{cd.stock}枚以下のご注文をお願いします。"
        redirect_to clients_cd_path(cd.id)
        return
      end

      if
        Item.exists?(cd_id: params[:item][:cd_id], client_id: current_client.id)
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
      flash[:notice] = "カートに商品を追加するには、ログインが必要です。"
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

    if item.cd.stock < item.quantity
      flash[:notice] = "#{item.cd.name}の在庫が#{item.cd.stock}枚なので、#{item.cd.stock}枚以下のご注文をお願いします。"
      item.quantity = item.cd.stock
      item.save
      redirect_to clients_items_path
      return
    end

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