class Article < ApplicationRecord
  # users
  belongs_to :user

  # validation
  validates :title, presence: true, length: { minimum: 3, message: "title must be at least 3 character-long" }
  validates :content, presence: true, length: { minimum: 20, message: "comment must be at least 20 character-long" }
end
