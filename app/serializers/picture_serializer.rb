class PictureSerializer < ActiveModel::Serializer
  attributes :id, :picture, :context
  belongs_to :project
end
