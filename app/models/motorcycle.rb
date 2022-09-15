class Motorcycle < ApplicationRecord
  belongs_to :category
  has_many :reservations
  has_many :users, through: :reservations
end
