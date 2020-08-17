class AnnotationSerializer < ActiveModel::Serializer
  attributes :id, :page_number, :comment
  belongs_to :book
end
