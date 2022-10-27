class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :project_id
end
