class PlacesController < ApplicationController

  def index
    @places = Place.all
    @place_pages = Place.order(:name).page params[:page]
    @markers = Place.markefy(@place_pages)
    @image = 'http://media3.giphy.com/media/M7gtacN7aPNsc/giphy.gif'
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to @place
    else
      render :new
    end
  end

  def show
    @place = Place.find(params[:id])
  end

  private

  def place_params
    params.require(:place).permit(:name, :address)
  end

end
