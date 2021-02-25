class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @lives = Life.first(4)
  end
end
