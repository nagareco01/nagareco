class Clients::OrdersController < ApplicationController
  def buy
  	@client = Client.find(current_user.id)
  	@order = Order.new
  end

  def purchase
  end
end
