class Review < ApplicationRecord
  RATES = (0..5).to_a
  
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: RATES }
  validates :rating, numericality: { only_integer: true }
end