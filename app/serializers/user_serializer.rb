class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :books, :serializer => BookSerializer
end
