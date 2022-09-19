class Category < ApplicationRecord
  has_many :motorcycles, dependent: :destroy
  validates :catname, presence: true, uniqueness: true
end
