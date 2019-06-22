class Admins::CdsController < ApplicationController
  before_action :authenticate_admin!
  before_action :reject_show, only: :show

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
    @cds = Cd.where(is_deleted: false)
    @genres = Genre.all
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def create
    @cd = Cd.new(cd_params)
    if  @cd.save
        redirect_to admins_cds_path

    else
        render 'new'
      end
  end

  def update
    @cd = Cd.find(params[:id])
    if  @cd.update(cd_params)
        redirect_to admins_cds_path

    else
      render 'edit'
    end
  end

  def hide
    cd = Cd.find(params[:id])
    cd.is_deleted = 1
    cd.save
    redirect_to admins_cds_path
  end


  def add
    @artist = Artist.new
    @label = Label.new
    @genre = Genre.new
  end

  def add_info

    if params[:artist].present?
    artist = Artist.new(artist_name: params[:artist][:artist_name])
    artist.save
    redirect_to new_admins_cd_path

    elsif params[:label].present?
    label = Label.new(label_name: params[:label][:label_name])
    label.save
    redirect_to new_admins_cd_path

    elsif params[:genre].present?
    genre = Genre.new(genre_name: params[:genre][:genre_name])
    genre.save
    redirect_to new_admins_cd_path

    else
    redirect_to admins_cd_add_path

    end

  end

  private

  def cd_params
    params.require(:cd).permit(:name, :artist, :price, :stock, :image, :description, :sale_status, :delete_flag, :artist_id, :label_id, :genre_id,
                        discs_attributes: [:id, :disc_number, :cd_id, :_destroy,
                        songs_attributes: [:id, :song_name, :song_number, :_destroy]])
  end

end
