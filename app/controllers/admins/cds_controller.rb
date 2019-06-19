class Admins::CdsController < ApplicationController
  def new
    @cd = Cd.new
    @disc = @cd.discs.build
    @song = @disc.songs.build
  end

  def show
    @cd = Cd.find(params[:id])
    @item = Item.new
  end

  def index
    @cds = Cd.all
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def create
    @cd = Cd.new(cd_params)
    @cd.save
    redirect_to admins_cds_path
  end

  def update
    @cd = Cd.find(params[:id])
    @cd.update(cd_params)
    redirect_to admins_cds_path
  end

  def destroy
    cd= Cd.find(params[:id])
    cd.destroy
  end




  def cd_params
    params.require(:cd).permit(:name, :artist, :price, :stock, :image, :description, :sale_status, :delete_flag, :artist_id, :label_id, :genre_id,
                        discs_attributes: [:id, :disc_number, :cd_id, :_destroy,
                        songs_attributes: [:id, :song_name, :song_number, :_destroy]])
  end
end
