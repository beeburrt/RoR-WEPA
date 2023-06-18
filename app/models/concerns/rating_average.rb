module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    sum = ratings.map { |r| r[:score] }.reduce(0) { |s, i| s + i }
    count = ratings.count
    (sum / count).to_f
  end
end
