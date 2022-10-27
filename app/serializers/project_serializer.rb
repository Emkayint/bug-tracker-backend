class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :organization_id, :name, :link
end
