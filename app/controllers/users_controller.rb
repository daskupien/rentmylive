class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @lives = Life.all
    @lives = Life.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
