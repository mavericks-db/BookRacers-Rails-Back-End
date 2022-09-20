class MotorcycleSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :year, :image, :category_id, :rental_price
end
