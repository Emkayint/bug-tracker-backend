class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :organization_id, :name, :link
  belongs_to :organization
  has_many :issues
end
