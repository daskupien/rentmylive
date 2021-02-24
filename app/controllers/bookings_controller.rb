class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # TODO find a life
    @life = current_user.life
  end

  def create
    @booking = Booking.new(booking_params)  # strong params
    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
