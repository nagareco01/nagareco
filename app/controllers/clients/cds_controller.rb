class Clients::CdsController < ApplicationController

  def index
  	@cds = Cd.all
  end

  def search
  	@cds = Cd.all
  end

  def show
  	@cd = Cd.find(params[:id])
  	@item = Item.new
  end

end
