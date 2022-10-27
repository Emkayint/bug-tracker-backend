class User < ApplicationRecord
  has_secure_password
  belongs_to :organization
  has_one :profile
  has_many :comments
  has_many :issues
end
