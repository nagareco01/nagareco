class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  
  def index
  	@orders = Order.all.order(created_at: :desc).page(params[:page]).per(20)
  end

  def update
  	order = Order.find(params[:id])
  	order.update(order_params)
  	flash[:notice] = "ステータスを変更しました。"
  	redirect_to admins_orders_path
  end

private

 def order_params
  	params.require(:order).permit(:shipment_status)
 end

end
