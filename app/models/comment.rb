class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :topic, optional: true
end
