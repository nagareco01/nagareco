class Admins::ClientsController < ApplicationController
  def index
    @clients = Client.all
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
