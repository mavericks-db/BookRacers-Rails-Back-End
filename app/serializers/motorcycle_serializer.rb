class MotorcycleSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :year, :image, :category_id, :rental_price
  has_many :reservations
  has_many :users, through: :reservations
end
