class Book < ApplicationRecord
  belongs_to :library
  has_one :user, through: :library
end
