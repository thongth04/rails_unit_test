class Movie < ApplicationRecord

  validates :title, presence: true, length: { in: 6..25 }
  validates :director, presence: true, length: { in: 5..20 } 
  validates :rate, presence: true, numericality: { only_integer: true,
                                                  greater_than: 0,
                                                  less_than_or_equal_to: 10 }
end
