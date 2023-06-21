module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    sum = ratings.map { |r| r.score }.sum
    count = ratings.count
    (sum / count).to_f
  end
end
