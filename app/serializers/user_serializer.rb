class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :role
  belongs_to :organization
  has_one :profile
end
