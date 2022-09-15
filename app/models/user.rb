class User < ApplicationRecord
  has_many :reservations
  has_many :motorcycles, through: :reservations
end
