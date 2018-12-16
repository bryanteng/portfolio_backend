class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :tools
  has_many :pictures
end
