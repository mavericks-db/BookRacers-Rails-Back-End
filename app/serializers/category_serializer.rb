class CategorySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :catname, :image, :picture
  has_many :motorcycles

  def picture
    rails_blob_path(object.picture, only_path: true) if object.picture.attached?
  end
end
