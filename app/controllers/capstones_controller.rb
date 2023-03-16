class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  def create
    @capstone = Capstone.create(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
    )
    render :show
  end
end
