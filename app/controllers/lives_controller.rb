class LivesController < ApplicationController
  def index 
    if params[:query].present?
      @lives = Life.where("city ILIKE ?", "%#{params[:query]}%")
    else
      @lives = Life.all
    end
  end

  def show
    @life = Life.find(params[:id])
    @booking = Booking.new
  end

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(life_params)
    @life.user = current_user
    if @life.save
      redirect_to life_path(@life)
    else
      render 'new'
    end
  end

  def destroy
    @life = Life.find(params[:id])
    @life.destroy
    redirect_to lives_path
  end

  private

  def life_params
    params.require(:life).permit(:description, :photo, :img_url, :price_per_day, :city, :job, :family, :relationship, :hobby)
  end
end
