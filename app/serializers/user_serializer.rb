class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :admin, :email, :password
  has_many :reservations
  has_many :motorcycles, through: :reservations
end
