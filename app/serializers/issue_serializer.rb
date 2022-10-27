class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :scope, :project_id, :user_id, :status, :pointer
end
