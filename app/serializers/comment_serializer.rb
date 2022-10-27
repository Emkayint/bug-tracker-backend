class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :project_id
  belongs_to :user
  belongs_to :project
end
