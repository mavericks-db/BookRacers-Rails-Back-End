class MotorcycleSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :brand, :model, :year, :image, :category_id, :rental_price, :reserved, :picture
  has_many :reservations
  has_many :users, through: :reservations

  def picture
    rails_blob_path(object.picture, only_path: true) if object.picture.attached?
  end
end
