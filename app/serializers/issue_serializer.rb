class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :scope, :project_id, :user_id, :status, :pointer
  has_many :comments
  belongs_to :project
end
