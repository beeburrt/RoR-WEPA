class User < ApplicationRecord
  include RatingAverage

  has_many :ratings
  has_many :beers, through: :ratings

  validates :username, uniqueness: true, length: { in: 3..30 }
end
