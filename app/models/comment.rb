class Comment < ApplicationRecord
  validates :content, presence: true
  belongs_to :favorite
  belongs_to :topic
  belongs_to :user
end
