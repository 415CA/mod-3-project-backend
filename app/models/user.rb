class User < ApplicationRecord
  has_many :libraries
  has_many :books, through: :libraries
end
