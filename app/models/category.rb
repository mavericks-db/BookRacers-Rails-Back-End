class Category < ApplicationRecord
  has_many :motorcycles
  validates :catname, presence: true, uniqueness: true
end
