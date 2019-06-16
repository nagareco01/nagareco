class Admins::CdsController < ApplicationController
  def new
    @cd = Cd.new
  end

  def show
  end

  def index
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def create
    @cd = Cd.new
    @cd.save
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
    params.require(:cd).permit(:name, :artist, :price, :stock,)
  end
end
