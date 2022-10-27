class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image, :about, :github
end
