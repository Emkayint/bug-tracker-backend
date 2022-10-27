class OrginizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :country
  has_many :users
  has_many :projects
end
