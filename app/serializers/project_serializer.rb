class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :detail, :tools
  has_many :pictures
end
