class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @life = current_user.life
    raise
  end

  def create
    @booking = Booking.new(booking_params)  # strong params
    life = Life.find(params[:life_id])
    user = current_user
    @booking.user = user
    @booking.life = life
    if @booking.save
      redirect_to life_path(life), notice: "Booked!"
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
