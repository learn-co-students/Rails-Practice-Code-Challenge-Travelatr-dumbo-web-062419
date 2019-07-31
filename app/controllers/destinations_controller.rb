class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(params.require(:destination).permit(:name, :country))
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(params.require(:destination).permit(:name, :country))
    redirect_to destination_path(@destination)
  end

  def destroy
    @destination = Destination.find(params[:id])
  end
end
