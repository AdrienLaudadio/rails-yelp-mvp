class Restaurant < ApplicationRecord
  validates_presence_of :name, :address
  has_many :reviews, dependent: :destroy
  # validates :phone_number, format: { with: /\A(\d{2}\s){4}\d{2}\z/, message: "wrong number format" }

  validates :category, presence: true, inclusion: { in: %w(chinese italian french belgian japanese), message: "%{value} is not a valid size" }
end
