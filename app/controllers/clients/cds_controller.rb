class Clients::CdsController < ApplicationController
  before_action :reject_show, only: :show

  def index
  	@cds = Cd.where(is_deleted: false)
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
