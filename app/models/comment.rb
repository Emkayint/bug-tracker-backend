class Comment < ApplicationRecord
  belongs_to :issue_id
  belongs_to :user
end
