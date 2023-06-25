class Brewery < ApplicationRecord
  include RatingAverage

  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  validates :name, :year, presence: true
  validates :year, numericality: { only_integer: true,
                                   in: 1040..2023 }
end
