class CategorySerializer < ActiveModel::Serializer
  attributes :id, :catname, :image
  has_many :motorcycles
end
