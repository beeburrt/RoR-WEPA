class Rating < ApplicationRecord
  belongs_to :beer

  # def to_s
  #   puts "#{beer.name} #{}"
  # end
end
