class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :country
end
