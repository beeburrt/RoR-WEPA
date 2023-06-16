class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def to_s
    "#{name} (#{brewery.name})"
  end

  def average_rating
    sum = ratings.map { |r| r[:score] }.reduce(0) { |s, i| s + i }
    count = ratings.count
    (sum / count).to_f
  end
end
