class Clients::CdsController < ApplicationController
  def show
  end

  def index
  	@cds = Cd.all
  end

  def search
  end

  	private
  def cd_params
    params.require(:cd).permit(:image_id)
  end
end
