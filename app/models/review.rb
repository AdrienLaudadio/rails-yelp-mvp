class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :content, :rating
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
