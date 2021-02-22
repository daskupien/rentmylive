class LivesController < ApplicationController
  def index
    @lives = Life.all
  end

  def show
    @life = Life.find(params[:id])
  end

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(life_params)
    if @life.save
      redirect_to live_path(@life)
    else
      render 'new'
    end
  end

  private

  def life_params
    params.require(:life).permit(:description, :img_url, :price_per_day, :city, :job, :family, :relationship, :hobby)
  end
end
