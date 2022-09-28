class Motorcycle < ApplicationRecord
  belongs_to :category
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :brand, :model, :year,  presence: true
  validates :rental_price, presence: true, numericality: { greater_than: 0 }

  has_one_attached :picture
end