class User < ApplicationRecord
  has_secure_password
  belongs_to :organization
  has_one :profile
end
