class Book < ApplicationRecord
  belongs_to :user
  has_many :annotations, dependent: :destroy
end
