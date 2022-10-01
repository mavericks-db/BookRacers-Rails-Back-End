class User < ApplicationRecord
  has_secure_password
  has_many :reservations, dependent: :destroy
  has_many :motorcycles, through: :reservations

  validates :name, :password, presence: true
  validates :email, presence: true, uniqueness: true
end
