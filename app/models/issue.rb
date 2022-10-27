class Issue < ApplicationRecord
  belongs_to :project
  has_many :comments
  has_many :users, through: :comments 
end
