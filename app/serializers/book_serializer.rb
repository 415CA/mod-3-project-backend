class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :current_page, :page_count, :image, :info_link, :user_id
  has_many :annotations, :serializer => AnnotationSerializer
end
