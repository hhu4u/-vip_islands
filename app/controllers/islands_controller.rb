class IslandsController < ApplicationController
  def index
    @islands = Island.all
    # The `geocoded` scope filters only islands with coordinates
  end

  def show
    @island = Island.find(params[:id])
    @booking = Booking.new
    @markers = [
      {
        lat: @island.latitude,
        lng: @island.longitude
      }
    ]
  end

  def index_by_user
    @islands = Island.where(user: current_user)
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    @island.update(island_params)
    redirect_to index_by_user_islands_path
  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy
    redirect_to index_by_user_islands_path
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :size, :number_of_guests, :price_per_night, :address, photos: [])
  end
end
