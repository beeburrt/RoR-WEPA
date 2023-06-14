class Beer < ApplicationRecord
  belongs_to :brewery

  has_many :ratings

  def average_rating
    sum = 0
    ratings.each do |rating|
      sum += rating.score
    end
    count = ratings.count
    (sum / count).to_f
  end
end
