class Clients::CdsController < ApplicationController

  def index
  	@cds = Cd.all
    @genres = Genre.all
  end

  def search
  end

  def show
  	@cd = Cd.find(params[:id])
  	@item = Item.new
  end

  private
    def cd_params
      params.require(:cd).permit(:image_id)
    end

end
