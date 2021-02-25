class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @life = current_user.life
    raise
  end

  def create
    @booking = Booking.new(booking_params)  # strong params
    life = Life.find(params[:life_id])
    @booking.user = current_user
    @booking.life = life
    total_price = (@booking.end_date - @booking.start_date) * life.price_per_day
    @booking.total_price = total_price
    if @booking.save
      redirect_to user_path(current_user), notice: "Booked!"
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
