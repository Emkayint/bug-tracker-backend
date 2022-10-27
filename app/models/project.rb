class Project < ApplicationRecord
  belongs_to :organization
  has_many :issues
  has_many :users, through: :issues
end
