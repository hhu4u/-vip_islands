class BookingsController < ApplicationController
  def show
  end

  def index_by_user
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @island = Island.find(params[:island_id])
    @booking.island = @island
    if @booking.save
      redirect_to index_by_user_bookings_path
    else
      render island_path(@island), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :number_of_guests)
  end
end
