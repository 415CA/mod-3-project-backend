class User < ApplicationRecord
  has_many :books
  has_many :annotations, through: :books
end
