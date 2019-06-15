class Admins::ClientsController < ApplicationController
  def index
    @clients = Client.page(params[:page]).per(3)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
