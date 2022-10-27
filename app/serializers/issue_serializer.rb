class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :scope, :project_id, :user_id, :status, :pointer
  belongs_to :project
  has_many :comments
end
