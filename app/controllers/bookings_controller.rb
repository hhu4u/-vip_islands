class BookingsController < ApplicationController
  def create
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :island_id)
  end
end
