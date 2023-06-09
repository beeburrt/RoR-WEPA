class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
    @beers = Beer.all
  end

  def create
    rating = Rating.new params.require(:rating).permit(:score, :beer_id)
    rating.user = current_user

    if @rating.save
      redirect_to user_path current_user
    else
      @beers = Beer.all
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.delete # use destroy here?
    redirect_to ratings_path
  end

  # private

  # def ratings_params
  #   params.require(:rating).permit(:score, :beer_id)
  # end
end
