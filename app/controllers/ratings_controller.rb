class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    Rating.create(ratings_params)
    redirect_to ratings_path
  end

  private

  def ratings_params
    params.require(:rating).permit(:score, :beer_id)
  end
end
