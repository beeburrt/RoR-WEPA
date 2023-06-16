class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
    @beers = Beer.all
  end

  def create
    Rating.create(params.require(:rating).permit(:score, :beer_id))
    @ratings = Rating.all
    redirect_to ratings_path
  end

  # private

  # def ratings_params
  #   params.require(:rating).permit(:score, :beer_id)
  # end
end
