class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { within: 0..5 }
end
