class Admins::CdsController < ApplicationController
  def new
    @cd = Cd.new
  end

  def show
  end

  def index
  end

  def edit
  end

  def create
    @cd = Cd.new
    cd.save
  end

  def update
  end

  def destroy
  end

  def cd_params
    params.require(:cd).permit(:name, :artist, :price, :stock,)
  end
end
