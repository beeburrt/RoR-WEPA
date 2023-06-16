class Brewery < ApplicationRecord
  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def print_report
    puts name
    puts "established at year #{year}"
    puts "number of beers #{beers.count}"
  end

  def average_rating
    sum = ratings.map { |r| r[:score] }.reduce(0) { |s, i| s + i }
    count = ratings.count
    (sum / count).to_f
  end
end
